# Build a Business Process Extension integrating with CAP Application, SAP S/4HANA Public Cloud using SAP Build Process Automation

The goal is to cover all the necessary steps to consume the CAP Service API functions in a Process, not to provide a real use case. With Action concept, it simplifies the experience for Citizen Developers to consume APIs without coding (no-code). Here is an high level overview of the architecture.

# Solution Architecure

![](./images/arch.png)

> [!Note]
> For this Hands-on, we have already subscribed, deployed CAP Application and created Actions for CAP Application & SAP S/4HANA using SAP Build using [Prerequisites](./prerequisites.md). You can proceed with exercises.

## Exercise 1 : Build Purchase Order Approval Business Process and Integrate with CAP.

1. [Create Project](./createprocess/README.md)
2. [Build a Purchase Order Form](./form/README.md)
3. [Build a Purchase Order Approvals](./approval/README.md)
4. [Add CAP Nodejs Action inside SPA](./action/README.md)
5. [Release and Deploy the Project](./deploy/README.md)
6. [Run End to End Scenario](./e2e/README.md)

##  Exercise 2: Learn how to integrate SAP S/4HANA inside SAP Build Process Automation.

> [!Important]  
> **Exercise 1** has to be completed before moving to Exercise 2.

1. [Consume SAP S/4HANA Business Partner API to the Drop-Down Fields in the Form.](./s4hana/README.md)
2. [Test the Dropdown Filtering in the Form](./s4hane2e/README.md)
