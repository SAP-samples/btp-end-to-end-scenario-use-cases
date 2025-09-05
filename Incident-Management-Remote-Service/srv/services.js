const cds = require('@sap/cds')
const logger = require('cf-nodejs-logging-support');

class ProcessorsService extends cds.ApplicationService {
  /** Registering custom event handlers */
  init() {
    logger.info("Initialize processors endpoint!");

    this.before("UPDATE", "Incidents", (req) => this.validateBeforeIncidentsUpdate(req));

    logger.info("Finish initializing processing endpoint!");

    return super.init();
  }
  
  /** Custom Validation */
  async validateBeforeIncidentsUpdate(req) {
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
module.exports = ProcessorsService
