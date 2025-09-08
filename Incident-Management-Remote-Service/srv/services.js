const cds = require('@sap/cds')
const logger = require('cf-nodejs-logging-support');
class ProcessorService extends cds.ApplicationService {
  /** Registering custom event handlers */
  async init() {
     logger.info("Initialize processors endpoint!");

    this.before("UPDATE", "Incidents", (req) => this.onUpdate(req));
    this.before("CREATE", "Incidents", (req) => this.changeUrgencyDueToSubject(req.data));
    this.on('READ', 'Customers', (req) => this.onCustomerRead(req));
    this.on(['CREATE','UPDATE'], 'Incidents', (req, next) => this.onCustomerCache(req, next));
    this.S4bupa = await cds.connect.to('OP_API_BUSINESS_PARTNER_SRV');
    this.remoteService = await cds.connect.to('RemoteService');
    return super.init();
  }

  async onCustomerCache(req, next) {
  const { Customers } = this.entities;
  const newCustomerId = req.data.customer_ID;
  const result = await next();
  const { BusinessPartner } = this.remoteService.entities;
  if (newCustomerId && newCustomerId !== "") {
    console.log('>> CREATE or UPDATE customer!');

    // Expands are required as the runtime does not support path expressions for remote services
    const customer = await this.S4bupa.run(SELECT.one(BusinessPartner, bp => {
      bp('*');
        bp.addresses(address => {
          address('email', 'phoneNumber');
            address.email(emails => {
              emails('email')
            });
            address.phoneNumber(phoneNumber => {
              phoneNumber('phone')
            })
        })
    }).where({ ID: newCustomerId }));

    if(customer) {
      customer.email = customer.addresses[0]?.email[0]?.email;
      customer.phone = customer.addresses[0]?.phoneNumber[0]?.phone;
      delete customer.addresses;
      delete customer.name;
      await UPSERT.into(Customers).entries(customer);
    }
  }
  return result;
}
    
async onCustomerRead(req) {
      console.log('>> delegating to S4 service...', req.query);
      let { limit, one } = req.query.SELECT
      if(!limit) limit = { rows: { val: 55 }, offset: { val: 0 } } //default limit to 55 rows

      const { BusinessPartner } = this.remoteService.entities;
      const query = SELECT.from(BusinessPartner, bp => {
        bp('*');
        bp.addresses(address => {
          address('email');
          address.email(emails => {
            emails('email');
          });
        });
      }).limit(limit)

      if(one){
        // support for single entity read
        query.where({ ID: req.data.ID });
      }
      // Expands are required as the runtime does not support path expressions for remote services
      let result = await this.S4bupa.run(query);

      result = result.map((bp) => ({
        ID: bp.ID,
        name: bp.name,
        email: (bp.addresses[0]?.email[0]?.email || ''),
        firstName: bp.firstName,
        lastName: bp.lastName,
      }));

      // Explicitly set $count so the values show up in the value help in the UI
      result.$count = 1000;
      console.log("after result", result);
      return result;
    }   
  changeUrgencyDueToSubject(data) {
    if (data) {
      const incidents = Array.isArray(data) ? data : [data];
      incidents.forEach((incident) => {
        if (incident.title?.toLowerCase().includes("urgent")) {
          incident.urgency = { code: "H", descr: "High" };
        }
      });
    }
  }

  /** Custom Validation */
  async onUpdate (req) {
   logger.info("Request id is: ", req.data.ID);
    const { status_code } = await SELECT.one(req.subject, i => i.status_code).where({ ID: req.data.ID })
    logger.info("Status code is: ", status_code);
    if (status_code === 'C'){
      try {
        throw new Error("Incident state doesn't allow further modifications.");
      } catch (e) {
        logger.error("Incident state doesn't allow further modifications.", e);
        logger.info("Logging code: Entering mutex state, only one change is allowed at a time.");
        logger.info("Incident state is being update from In process to Closed, by external process (Inbound API)");
      }
      return req.reject(`Incident state doesn't allow further modifications.`)
    }
  }

}
module.exports = { ProcessorService }