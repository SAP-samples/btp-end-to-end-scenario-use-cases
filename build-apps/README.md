# Use SAP Build Apps to Build Side-by-Side UI Extensions for SAP S/4HANA

The main focus of this mission is to develop a custom UI application, which consumes an OData service from an SAP S/4HANA system.

We will create a simple custom UI application using no-code tool **SAP Build Apps**, push the code to the HTML5 repository and show different options on how to expose this application - as a stand-alone or with the different SAP Build Work Zone environments.


# Business Scenario

As a sample scenario, Jane a sales executive of ACME Corporation regularly meets different customers. She needs access to the latest customer information on the go. She needs a simplified web application, which can run on a portable device like smartphone or a tablet.

ACME Corporation implements the application as an SAP S/4HANA extension on SAP Business Technology Platform (SAP BTP). This application is created with SAP Build Apps, a no-code user interface development tool.

This scenario covers:

* Building application with SAP Build Apps
* Set up connectivity between SAP BTP and SAP S/4HANA Cloud or SAP S/4HANA on-premise
* Deploying the application on SAP BTP, Cloud Foundry environment

# Solution Architecture


 ![Solution Architecture](./discover/images/Keep_the_Core_clean_SD.drawio.png)

# Hands-on Exercises

## Pre-requisite
## 

> [!Note]
> For this hands-on we have already set up the below pre-requsite steps. You can directly proceed with  the exercises

  1.  [BTP Account with entitlement for SAP Build Apps](../workshops/clean-core-extensibility-cap/setup/setup-build-apps-&-process-automation.md#setup-sap-build-apps-in-sap-btp-using-booster)
  2. [SAP S/4 HANA Cloud system with communication user](../workshops/clean-core-extensibility-cap/setup/s4hana-cloud-config.md)
    
##  Exercise 1: Develop a Simple UI application using SAP Build Apps
  1. [Create a No-Code Application with SAP Build Apps](./create-application/develop/README.md)
  2. [Create a Business Partner List Page](./create-application/develop/ListPage/README.md)
  3. [Create a Business Partner Details Page](./create-application/develop/DetailsPage/README.md)

##  [Optional] Exercise 2: Deploy Simple UI Application to SAP BTP.
  1. [Build and Deploy Your SAP Build Apps Application to SAP BTP](./create-application/deploy/README.md)

