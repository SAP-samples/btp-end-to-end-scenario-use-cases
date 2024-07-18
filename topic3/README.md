# Clean Core Full Stack Application Development with SAP BTP

## Overview

Welcome to this guidance for application development on **SAP Business Technology Platform (SAP BTP)** following the Golden Path. In the following documentation and tutorials, we provide information and examples on how to develop and deploy a full stack application based on **SAP Cloud Application Programming Model (CAP)** and **SAP Fiori elements** on SAP BTP using different tools and services step by step.

## MindMap

```mermaid
   mindmap
  root((SAP BTP Guide))
    Tools and System
      SAP Business Application Studio
      SAP S/4HANA Cloud
      SAP BTP Account
    Develop Full Stack CAP Application 
      Add Custom Logic
      Add Fiori Elements
      Use a Local Launch Page
      Add Authorization
      Prepare for Production
        Deploy to SAP BTP,CF
          Integrate to SAP Build Workzone
            Integrate SAP Mobile Start
    Inplement Remote Connectivity
      Extend Incident Management
        Test with Mock Data locally
        Prepare for Production
          Deploy to SAP BTP, CF
            Run with S/4HANA Backend 
    Day 2 Operation
      Observability
        SAP Cloud Logging Service
          Access Logs
          Metrics
          Traces
```
## Understand Your Journey

```mermaid
journey
    title Your Journey for SAP BTP Developer Guide
    section Develop Full Stack CAP Application
      Develop CAP+Fiori: 5: Me
      Prepare for Production: 5: Me
      Deploy to SAP BTP,CF: 5: Me
    section Implement Remote Connectivity
      Extend Application: 5: Me
      Test Locally: 5: Me
      Prepare and Deploy: 5: Me
      Run with S/4HANA Backend: 5: Me 
    section Day 2 Operation
      SAP Cloud Logging Service: 5: Me
      Access Logs,Metrics and Traces: 5: Me,Champion
```

## 1. Develop and Deploy Full-Stack CAP Application

```mermaid
journey
    title Your Journey to Develop and Deploy Full-Stack CAP Application
    section Service
      Set Up SAP Business Application Studio: 5: Me
      Build a CAP Application: 5: Me
      Add SAP Fiori Elements UIs: 5: Me 
    section Custom Logic
      Add Custom Logic: 5: Me 
    section Launchpage & Security
      Use a Local Launch Page: 5: Me
      Add Authorization: 5: Me
      Add Test Cases: 5: Me
    section Ready for Production
      Prepare for Production: 5: Me
      Deploy in SAP BTP, Cloud Foundry Runtime: 5: Me
      Assign the User Roles: 5: Me
    section Integration to Workzone
      Integrate Your Application with SAP Build Work Zone, Standard Edition: 5: Me, CAP Champion
```

The Incident Management application uses the following sample business scenario:

ACME is a popular Electronics company. ACME hires call center support representatives to process and manage customer incidents. A call center support representative (Processor) receives a phone call from an existing customer and creates a new incident on behalf of the customer. The newly created incident is based on a customer complaint received during the phone call so the call center support representative also adds the conversation with the customer to the incident

![](./Images/basic.png)

1. [Set Up SAP Business Application Studio](https://developers.sap.com/tutorials/set-up-bas.html)
2. [Build a CAP Application](https://developers.sap.com/tutorials/build-cap-app.html)
3. [Add SAP Fiori Elements UIs](https://developers.sap.com/tutorials/add-fiori-elements-uis.html)
4. [Add Custom Logic](https://developers.sap.com/tutorials/add-custom-logic.html)
5. [Use a Local Launch Page](https://developers.sap.com/tutorials/use-local-launch-page.html)
6. [Add Authorization](https://developers.sap.com/tutorials/add-authorization.html)
7. [Add Test Cases](https://developers.sap.com/tutorials/add-test-cases.html)
8. [Prepare for Production](https://developers.sap.com/tutorials/prep-for-prod.html)
9. [Prepare for Deployment in the SAP BTP, Cloud Foundry Runtime](https://developers.sap.com/tutorials/prepare-btp-cf.html)
10. [Deploy in SAP BTP, Cloud Foundry Runtime](https://developers.sap.com/tutorials/deploy-to-cf.html)
11. [Assign the User Roles](https://developers.sap.com/tutorials/user-role-assignment.html)
12. [Integrate Your Application with SAP Build Work Zone, Standard Edition](https://developers.sap.com/tutorials/integrate-with-work-zone.html)

## 2. Implement Remote Connectivity with SAP S/4HANA

```mermaid
journey
    title Your Journey to Extend Incident Management with SAP S/4HANA Cloud
    section Extend Application
      Extend the Incident Management аpplication: 5: Me
      Run a developer test with mock data: 5: Me
    section Preparation & Deployment
      Prepare the app for production: 5: Me 
      Deploy to SAP BTP Cloud Foundry runtime: 5: Me
    section Run
      Run application with SAP S/4HANA Backend: 5: Me, Extension Developer
```

In this tutorial, we will integrate SAP S/4HANA Cloud Business Partner API to the Incident Management application.

The Incident Management application helps call center support representatives process and manage customer incidents. A support representative (processor) receives a phone call from an existing customer and creates a new incident on behalf of the customer.

When a new incident is created by the processor, they have to assign the incident to the respective customer. The option to choose a customer will be given as a value help and the list of customers in the value help will be fetched from the **SAP S/4HANA Cloud system**. For this purpose, we will be using the **SAP S/4HANA Business Partner API**.

![](./Images/remote.png)

1. [Extend the Incident Management аpplication](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/remote-service/develop/extend-app-cf.md)
2. [Run a developer test with mock data](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/remote-service/develop/test-with-mock.md)
3. [Prepare the app for production](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/remote-service/deploy/prep-for-prod/prep-for-prod.md)
4. [Deploy to SAP BTP Cloud Foundry runtime with SAP S/4HANA Cloud](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/remote-service/deploy/cf/deploy-to-cf.md)
5. [Run application with SAP S/4HANA Backend](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/remote-service/test-the-application/test-the-app.md)

## 3. Day2 Operation: Implement Observability 

```mermaid
journey
    title Your Journey for Day2 Operation
    section Setup
      Setup Custom Log Collection: 5: Me
      Set Up Trace Collection: 5: Me
      Set Up Metrics Collection: 5: Me
    section Preparation & Deployment
      Deploy Application in the SAP BTP, Cloud Foundry Runtime: 5: Me
    section Monitor using SAP Cloud Logging Service
      Access Logs: 5: Me
      Acesss Metrics: 5: Me
      Access Traces: 5: Me, Day2 Expert
```

**Observability** helps to take data-driven informed decisions based on runtime Observability telemetry data (logs, metrics, traces, events, ...) and provides insights into SAP & customer services and systems to understand and improve efficiency, scalability, resilience, and availability.

Find further SAP internal information on Observability basics, best practices and more on Stack@SAP and on the SAP BTP Observability Website.

BTP Observability Go-To-Services are reusable & cross-consumable across multiple BTP runtimes and are recommended to be included in the CAP specific and service specific Operational procedures.

![](./Images/observability.png)

1. [Setup Custom Log Collection](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/observability/2-implement.md)
2. [Set Up Trace Collection](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/observability/3-implement-traces.md)
3. [Set Up Metrics Collection](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/observability/metrics.md)
4. [Deploy Application in the SAP BTP, Cloud Foundry Runtime](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/observability/4-deploy-to-cf.md)
5. [Access Logs, Metrics and Traces Using SAP Cloud Logging Service](https://github.com/SAP-samples/btp-developer-guide-cap/blob/main/documentation/observability/6-test-the-flow.md)






