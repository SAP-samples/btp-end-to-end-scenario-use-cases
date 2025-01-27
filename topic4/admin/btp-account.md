# Setup SAP BTP Account

## Overview

1. Create a new subaccount with the following entitlements:

  * Event Mesh
  * SAP Build Process Automation
  * SAP Build Work Zone, standard edition
  * SAP S/4HANA Cloud Extensibility
  * Cloud Foundry Runtime

> More information on entitlements assignment can be found [here](https://help.sap.com/docs/btp/sap-business-technology-platform/entitlements-and-quotas)

2. Enable Cloud Foundry Environment. More information can be found [here](https://help.sap.com/docs/btp/sap-business-technology-platform/getting-started-in-cloud-foundry-environment)

3. Subscribe to SAP Build Process Automation app. Then create a service instance for SAP Build Process Automation with a service key. You can use a booster or do it manually. More details can be found [here](https://help.sap.com/docs/build-process-automation/sap-build-process-automation/subscribe-to-sap-build-process-automation-standard-plan).

4. Subscribe to SAP Build Workzone, standard edition service. More information can be found [here](https://help.sap.com/docs/build-work-zone-standard-edition/rise-grow-standard-edition-enablement/getting-started-with-sap-build-work-zone-standard-edition).

5. Assign the following role collections to your user. More information on role collections can be found [here](https://help.sap.com/docs/intelligent-robotic-process-automation/what-is-sap-intelligent-rpa/assigning-role-collections):

  * Launchpad_Admin
  * ProcessAutomationAdmin
  * ProcessAutomationParticipant

## Next Step

[Setup S/4HANA Cloud Connection](./s4hc-connection.md)