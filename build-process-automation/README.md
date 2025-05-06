# Build a Business Process Extension integrating with CAP Application, SAP S/4HANA Public Cloud using SAP Build Process Automation

The goal is to cover all the necessary steps to consume the CAP Service API functions in a Process, not to provide a real use case. With Action concept, it simplifies the experience for Citizen Developers to consume APIs without coding (no-code). Here is an high level overview of the architecture.

# Solution Architecure

![](./images/arch.png)

# Hands-on Exercises

## [Lobby link](https://hands-on-btp-innovation-day-bg6hmvjc.ap10.build.cloud.sap/lobby)

## Exercise 1 : Build Purchase Order Approval Business Process and Integrate with CAP.

1. [Create Action for CAP Application](./action/createaction.md)
2. [Create Project](./createprocess/README.md)
3. [Build a Purchase Order Form](./form/README.md)
4. [Build a Purchase Order Approvals](./approval/README.md)
5. [Add CAP Nodejs Action inside SPA](./action/README.md)
6. [Release and Deploy the Project](./deploy/README.md)
7. [Run End to End Scenario](./e2e/README.md)

##  Exercise 2: Learn how to integrate SAP S/4HANA inside SAP Build Process Automation.

> [!Important]  
> **Exercise 1** has to be completed before moving to Exercise 2.

1. [Create Action for SAP S/4HANA](./action/createactions4hana.md)
2. [Consume SAP S/4HANA Business Partner API to the Drop-Down Fields in the Form.](./s4hana/README.md)
3. [Test the Dropdown Filtering in the Form](./s4hane2e/README.md)
