# Simplifying Application Development with SAP Build Code Powered by Joule

In this hands-on exercise, you will learn how to jumpstart your application development of a full-stack SAP Cloud Application Programming Model (CAP)-based application using SAP Build Code powered by Joule, which is the AI copilot that understands your business and can interact with your SAP business systems.


## Key Capabilities of SAP Build Code

SAP Build Code offers an AI-powered cloud development environment specifically tailored for SAP Cloud Application Programming Model (CAP), SAP Fiori, mobile, and SAPUI5 developers. SAP Buid Code:
- Enables developers to code faster and smarter, generates code from natural language descriptions using generative AI.
- Builds extension applications, and integrates them with SAP and non-SAP systems.
- Uses the centralized Lobby for fusion development.

## SAP Build Code Powered by Joule

By seamlessly integrating coding, testing, and application management, SAP Build Code streamlines the application development process on SAP BTP. It combines SAP Business Application Studio with the most essential services and SDKs on SAP BTP.

With the integration of Joule, the innovative AI copilot of SAP, SAP Build Code enables automatic generation of application code, data models, services, and sample data. Using SAP Build Code ensures adherence to the best practices and guidance outlined in the [SAP BTP Developer's Guide](https://help.sap.com/docs/btp/btp-developers-guide/btp-developers-guide?version=Cloud).

![build code with joule](images/build-code.png)

# Business Scenario

In this hands-on exercise, you will build an application called Incident Management using SAP Build Code. The business scenario of the Incident Management applciation is the following:

ACME is a popular Electronics company. ACME hires call center support representatives to process and manage customer incidents. A call center support representative (Processor) receives a phone call from an existing customer and creates a new incident on behalf of the customer. The newly created incident is based on a customer complaint received during the phone call. The call center support representative also adds the conversation with the customer to the incident for future reference.

# Solution Diagram

![Solution Diagram](images/Solution-Diagram.png)

# Hands-on Exercise

## Pre-requisite
> [!Note]
> For this hands-on we have already set up the below pre-requsite steps. You can directly proceed with  the exercises

1. [Setup SAP Build Code  in SAP BTP](./document/prerequisites.md)
2. [Register an SAP S/4HANA Cloud system in your SAP SAP Business Technology Platform (BTP)](./document/add-remote-service/s4hana-cloud-to-btp-connectivity.md)


## Exercise 1: Develop Basic Incident Management Application using SAP Build Code CAP

1. [Create Space in SAP BTP](./document/create-space.md)
2. [Create the Project](./document/create-full-stack-project.md)
3. [Create Data Entities](./document/create-data-entities.md)
4. [Add Sample Data](./document/enhance-sample-data.md)
5. [Add CDS Services](./document/generate-service.md)
6. [Add Business Logic with Joule](./document/custom-logic.md)
7. [Add Fiori UI Using Joule](./document/fiori-ui.md)
8. [[Optional]Extend the Fiori UI](./document/extend-fiori-ui.md)
9. [Add Test Cases](./document/testcase.md)

## Exercise 2: Deploy in SAP BTP, Cloud Foundry Runtime

1. [Deploy to SAP BTP, Cloud Foundry Runtime](./document/deploy-cf.md)
2. [Integrate Your Application with SAP Build Work Zone, Standard Edition](./document/integrate-workzone.md) 
3. [Test the Scenario End to End](./document/e2e-testing.md)

## Exercise 3: Consume External Service

> [!Note]
> To proceed with consuming external service, development and deployment of the CAP application needs to be completed as a prerequisite.

1. [Update the Business Scenario](./document/add-remote-service/README.md)
2. [Extend the Incident Management аpplication](./document/add-remote-service/extend-app-cf.md)
3. [Run a developer test Locally](./document/add-remote-service/test-with-mock.md)
4. [Deploy to SAP BTP Cloud Foundry runtime with SAP S/4HANA Cloud](./document/add-remote-service/deploy-to-cf.md)
5. [Test the end to end flow](./document/add-remote-service/test-the-app.md)