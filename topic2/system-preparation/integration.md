# Integrate S/4HANA Cloud system with SAP BTP

In this section, you enhance Poetry Slam Manager, your SAP BTP solution, to make sure that it supports SAP S/4HANA Cloud Public Edition as the back end. 

Front-end integration:
1. Navigate from Poetry Slam Manager to related SAP S/4HANA Cloud Public Edition enterprise projects.

Back-channel integration:

2. Create SAP S/4HANA Cloud Public Edition enterprise projects from Poetry Slam Manager and display SAP S/4HANA Cloud Public Edition project information on the Poetry Slam Manager UI using OData APIs with principal propagation and basic authentication.

## Create SAP BTP Destinations

Create 3 destinations with the following parameters:

### Destination 1

- **Name**: s4hc
- **Type**: HTTP
- **Description**: S4HC with Principal Propagation
- **URL**: https://XXXXXXX-api.lab.s4hana.cloud.sap
- **Proxy Type**: Internet
- **Authentication**: SAMLAssertion
- **Audience**: https://XXXXXXXXX.s4hana.cloud.sap
- **AuthnContextClassRef**: urn:oasis:names:tc:SAML:2.0:ac:classes:X509
- Additional Properties:
    - **HTML5.DynamicDestination**: true
    - **nameIdFormat**: urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress
    - **WebIDEEnabled**: true
    - **WebIDEUsage**: odata_gen

### Destination 2

- **Name**: s4hc-tech-user
- **Type**: HTTP
- **Description**: Endpoint to defect API on SAP S/4HANA Cloud
- **URL**: https://XXXXXXX-api.lab.s4hana.cloud.sap
- **Proxy Type**: Internet
- **Authentication**: BasicAuthentication
- **User**: `Communication User`
- **Password**: `Communication User Password`
- Additional Properties:
    - **HTML5.DynamicDestination**: true
    - **HTML5.Timeout**: 60000
    - **WebIDEEnabled**: true
    - **WebIDEUsage**: odata_gen

### Destination 3

- **Name**: s4hc-url
- **Type**: HTTP
- **Description**: Endpoint to checklist on SAP S/4HANA Cloud
- **URL**: https://XXXXXXX.s4hana.cloud.sap
- **Proxy Type**: Internet
- **Authentication**: NoAuthentication