# Prerequisites

1. Develop the Incident Management application following the basic exercises.

2. Deploy the Incident Management application to Cloud Foundry runtime:
   - SAP BTP, Cloud Foundry runtime: [Deploy a Full-Stack CAP Application in SAP BTP, Cloud Foundry Runtime](../deploy-cf.md).

3. Undeploy your application by running the following command:
   
   - For SAP BTP, Cloud Foundry runtime: `cf undeploy <YOUR_MTA_ID> --delete-services`

4. [Register an SAP S/4HANA Cloud system in your SAP SAP Business Technology Platform (BTP)](./s4hana-cloud-to-btp-connectivity.md). 

# Systems and Accounts

* SAP S/4HANA Cloud system 

# Additional Entitlements Required

Remote service integration to the developed CAP application requires the following additional entitlements and quotas in the SAP BTP cockpit:

| Service                           | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
| SAP S/4HANA Cloud Extensibility | api-access | 1 |

See [Entitlements and Quotas](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/00aa2c23479d42568b18882b1ca90d79.html?locale=en-US).

* While adding entitlement **SAP S/4HANA Cloud Extensibility**, please select the appropriate system under **Service Details: SAP S/4HANA Cloud Extensibility** dropdown.
* In the checkbox, check the **api-access** under Available Plans and add the service plans.

# Next

[Get the Business Partner API](./explore-apis-and-events.md)

