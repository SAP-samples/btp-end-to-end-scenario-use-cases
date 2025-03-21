## Integrate CAP NodejS Application in SAP Build Process Automation.

The goal is to cover all the necessary steps to consume the CAP Service API functions in a Process, not to provide a real use case. With Action concept, it simplifies the experience for Citizen Developers to consume APIs without coding (no-code). Here is an high level overview of the architecture.

## Solution Architecure.

![](./images/arch.png)

## Pre requisite
> [!Note]
> For this handson we have already set up the below steps. You can directly proceed with Exercises

-  [Setup SAP Build Process Automation in SAP BTP](../workshops/clean-core-extensibility-cap/setup/setup-build-apps-&-process-automation.md#setup-sap-build-process-automation-in-sap-btp-using-booster)
- [Deployment of CAP Application](./prerequisites/deployment.md)
- [SAP S/4 HANA Cloud system with communication user](../workshops/clean-core-extensibility-cap/setup/s4hana-cloud-config.md)

## Exercise 1 : Build Purchase Order Approval Business Process and Integrate with CAP.

* Follow the below steps for quick start.

    |    | 
    | ----------- |
    | [Create Project](./createprocess/README.md) |
    | [Build a Purchase Order Form](./form/README.md) |
    | [Build a Purchase Order Approvals](./approval/README.md)  |
    | [Add CAP Nodejs Action inside SPA](./action/README.md)|
    | [Release and Deploy the Project](./deploy/README.md) |
    | [Run End to End Scenario](./e2e/README.md) |

##  Exercise 2: Learn how to integrate SAP S/4HANA inside SAP Build Process Automation.

> [!IMPORTANT]  
> **Exercise 1** has to be completed before moving to Section 2.

* Follow the below steps for quick start.

    |   | 
    | ----------- |
    | [Consume SAP S/4HANA Business Partner API to the Drop-Down Fields in the Form.](./s4hana/README.md) |
    | [Test the Dropdown Filtering in the Form](./s4hane2e/README.md) |

