# Configure S/4 HANA Public Cloud for connectivity from SAP BTP

## Purpose

In this section you will prepare S/4HANA Cloud Public Edition system to provide Business Partner data to SAP BTP.

## Prerequisites

Make sure that you fulfill the following prerequisites to implement this section:

- You need an SAP S/4HANA Cloud subscription with Business Partners data (e.g. Demo Data).

- You need a user with access:

    - to set up communication management,
    - to create users and to assign authorizations

Ideally you should have administrator role in S/4HANA (*SAP_BR_ADMINISTRATOR*).

## API Overview

Make yourself familiar with the interfaces:

1. [SAP API Business Hub](https://api.sap.com/package/SAPS4HANACloud/all)
2. [Business Partner (A2X)](https://api.sap.com/api/API_BUSINESS_PARTNER/overview) 

## Communication Management

To expose the Business Partner (A2X) OData service in SAP S/4HANA Cloud, public edition you will need to create a communication arrangement for the communication scenario `SAP_COM_0008`. The authentication and authorization parameters are defined by the communication system. As in this tutorial you will use Basic Authentication, you will create a communication user to access the service. 

Follow the steps 1-3 in the tutorial [Integrate SAP BTP, ABAP environment and SAP S/4HANA Cloud, public edition using Basic Authentication](https://developers.sap.com/tutorials/abap-environment-business-partner-basic-auth..html) to create all the communication artifacts.

## Links to SAP S/4HANA Cloud Help

For the simplicity reasons we propose to use Basic Authentication in this tutorial. You can also use single sign-on methods to access the API for the full autherization control. If you need more information about the topics, you can have a look at the following links as a reference: 

1. [Identity Authentication Configuration for SAP S/4HANA](https://help.sap.com/docs/cloud-identity/system-integration-guide/identity-authentication-configuration-for-sap-s-4hana)
2. [Business Partner Model in SAP S/4HANA Cloud Public Edition](https://help.sap.com/docs/SAP_S4HANA_CLOUD/0bebd08dffca45afa67b1f751199afd0/0b8351762c0b4b2aa7844905d9a3a441.html)
3. [Business Partner Integration](https://help.sap.com/docs/SAP_S4HANA_CLOUD/3c916ef10fc240c9afc594b346ffaf77/f7399c7374d3475a96a56a0856b5f3ee.html)
3. [Identity and Access Management](https://help.sap.com/docs/SAP_S4HANA_CLOUD/a630d57fc5004c6383e7a81efee7a8bb/f25f9108740442c3804370f2d88a9bdd.html?q=Maintain%20Business%20Users)
4. [Configuration of Integrated SAP BTP Apps](https://help.sap.com/docs/SAP_S4HANA_CLOUD/0f69f8fb28ac4bf48d2b57b9637e81fa/1a2f16c997f741278347545969947d76.html?q=SAP%20S%2F4HANA%20Cloud%20Launchpad)
5. [Communication Management](https://help.sap.com/docs/SAP_S4HANA_CLOUD/0f69f8fb28ac4bf48d2b57b9637e81fa/2e84a10c430645a88bdbfaaa23ac9ff7.html?q=SAP%20S%2F4HANA%20Cloud%20Launchpad)
