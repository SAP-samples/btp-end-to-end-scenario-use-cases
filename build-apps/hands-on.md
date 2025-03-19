[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/btp-s4hana-nocode-extension)](https://api.reuse.software/info/github.com/SAP-samples/btp-s4hana-nocode-extension)
# Use SAP Build Apps to Build Side-by-Side UI Extensions for SAP S/4HANA

The main focus of this mission is to develop a custom UI application, which consumes an OData service from an SAP S/4HANA system.

We will create a simple custom UI application using no-code tool **SAP Build Apps**, push the code to the HTML5 repository and show different options on how to expose this application - as a stand-alone or with the different SAP Build Work Zone environments.

You can find this scenario as a mission in [SAP Discovery Center](https://discovery-center.cloud.sap/missiondetail/4024/4228/).

## Business Scenario

As a sample scenario, Jane a sales executive of ACME Corporation regularly meets different customers. She needs access to the latest customer information on the go. She needs a simplified web application, which can run on a portable device like smartphone or a tablet.

ACME Corporation implements the application as an SAP S/4HANA extension on SAP Business Technology Platform (SAP BTP). This application is created with SAP Build Apps, a no-code user interface development tool.

This scenario covers:

* Building application with SAP Build Apps
* Set up connectivity between SAP BTP and SAP S/4HANA Cloud or SAP S/4HANA on-premise
* Deploying the application on SAP BTP, Cloud Foundry environment

## Solution Architecture

**SAP S/4HANA Cloud**

 ![Solution Architecture](./discover/images/Keep_the_Core_clean_SD.drawio.png)

**SAP S/4HANA on-premise**

 ![Solution Architecture](./discover/images/Keep_the_Core_clean_OnPremise.drawio.png)


### Develop a simple UI application:
  * [Create a No-Code Application with SAP Build Apps](./create-application/develop/README.md)
  * [Create a Business Partner List Page](./create-application/develop/ListPage/README.md)
  * [Create a Business Partner Details Page](./create-application/develop/DetailsPage/README.md)
  * [Build and Deploy Your SAP Build Apps Application to SAP BTP](./create-application/deploy/README.md)
  * [Integrate the Application with SAP Build Work Zone, standard edition](./create-application/workzone/README.md)
  * [Build Your App and Install it on a Mobile Device](./create-application/mobile_services/README.md)


