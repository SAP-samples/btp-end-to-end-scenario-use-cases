# Integrate CAP NodejS Application in SAP Build Process Automation.

The goal is to cover all the necessary steps to consume the CAP Service API functions in a Process, not to provide a real use case. With Action concept, it simplifies the experience for Citizen Developers to consume APIs without coding (no-code). Here is an high level overview of the architecture.

# Solution Architecure

![](./images/arch.png)

# Hands-on Exercises

## Pre-requisite

> [!Note]
> For this hands-on we have already set up the below pre-requsite steps. You can directly proceed with the exercises

1. [Setup SAP Build Process Automation in SAP BTP](../workshops/clean-core-extensibility-cap/setup/setup-build-apps-&-process-automation.md#setup-sap-build-process-automation-in-sap-btp-using-booster)
2. [Deployment of CAP Application](./prerequisites/deployment.md)
3. [Create Destinations for CAP Application and SAP S/4HANA Cloud System](./prerequisites/README.md)
4. [Create Action Project in SAP Build Actions](./action/createaction.md)
5. [SAP S/4 HANA Cloud system with communication user](../workshops/clean-core-extensibility-cap/setup/s4hana-cloud-config.md)

## Important Links
| | | |
| ----------- | ----------- | ----------- |
|[SAP BTP Cockpit](https://emea.cockpit.btp.cloud.sap/cockpit/?idp=pesworkshops.accounts.ondemand.com#/globalaccount/a9030b2a-ed51-438e-9166-241ce6c0291d/subaccount/39f42fe8-e715-49e0-850a-316400cceb53/subaccountoverview) | [SAP Build Lobby](https://pw-build-hands-on.eu10.build.cloud.sap/lobby)|

## Exercise 1 : Build Purchase Order Approval Business Process and Integrate with CAP.

1. [Create Project](./createprocess/README.md)
2. [Build a Purchase Order Form](./form/README.md)
3. [Build a Purchase Order Approvals](./approval/README.md)
4. [Add CAP Nodejs Action inside SPA](./action/README.md)
5. [Release and Deploy the Project](./deploy/README.md)
6. [Run End to End Scenario](./e2e/README.md)

##  Exercise 2: Learn how to integrate SAP S/4HANA inside SAP Build Process Automation.

> [!Note]  
> **Exercise 1** has to be completed before moving to Exercise 2.

1. [Consume SAP S/4HANA Business Partner API to the Drop-Down Fields in the Form.](./s4hana/README.md)
2. [Test the Dropdown Filtering in the Form](./s4hane2e/README.md)

  ## Exercise Home Page
   [Navigate to Home Page](../workshops/clean-core-extensibility-cap/README.md)
