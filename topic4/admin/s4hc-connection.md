# Setup S/4HANA Cloud Connection

## Overview

1. Make sure that you have the following business roles in SAP S/4HANA Cloud. More details on roles assignment can be found [here](https://help.sap.com/docs/SAP_S4HANA_ON-PREMISE/4cef93946a0b48ec89533b3c34443b85/88e84ba4d9b84c3c8fe43defe3d0f401.html): 

  * SAP_BR_ADMINISTRATOR
  * SAP_BR_EXTENSIBILITY_SPECIALIST
  * SAP_BR_PURCHASER
  * Sometimes you're required to add the **Enterprise Event Enablement** (**SAP_CORE_BC_XBE**) business catalog to the user as described [here](https://help.sap.com/docs/btp/sap-business-technology-platform/monitoring-events-1b9c0fa990f44fd5b1438523a6bc814c?version=Cloud).

2. Register S/4HANA Cloud system on SAP BTP as described [here](https://help.sap.com/docs/btp/sap-business-technology-platform/register-sap-s-4hana-cloud-system-in-global-account-in-sap-btp?version=Cloud) and confirm the registration on S/4HANA Cloud side as described [here](https://help.sap.com/docs/btp/sap-business-technology-platform/trigger-registration-in-sap-s-4hana-cloud-tenant?version=Cloud).

## Next Step

[Eventing Setup](./eventing.md)