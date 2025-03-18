# Prepare S/4HANA Cloud system, Public Edition

## Purpose

In this section you will prepare S/4HANA Cloud Public Edition system to allow additional planning steps in a CAP project.

The following features are handled:

- Create projects for poetry slam events with one click and preview project information on the Poetry Slams UI.

- As an SAP S/4HANA Cloud user, start Poetry Slams and Visitors application from your SAP S/4HANA Cloud launchpad and navigate from Poetry Slams to the associated project in the system.

## Prerequisites

Make sure that you fulfill the following prerequisites to implement this section:

- You need an SAP S/4HANA Cloud subscription with Enterprise Portfolio and Project Management.

- You need a user with access:

    - to set up single sign-on,
    - to create users and to assign authorizations,
    - to create OData services for the enterprise project integration, and
    - to configure the SAP S/4HANA Cloud launchpad.

Ideally you should have administrator role in S/4HANA (*SAP_BR_ADMINISTRATOR*).

## API Overview

As Poetry Slam Manager will use OData services of SAP S/4HANA Cloud to create and read project data, make yourself familiar with the interfaces:

1. [SAP API Business Hub](https://api.sap.com/package/SAPS4HANACloud/all)
2. [Enterprise Project OData v2](https://api.sap.com/api/API_ENTERPRISE_PROJECT_SRV_0002/overview) 
3. [Enterprise Project - Read Project Processing Status OData v4](https://api.sap.com/api/ENTPROJECTPROCESSINGSTATUS_0001/overview) 
4. [Enterprise Project - Read Project Profile OData v4](https://api.sap.com/api/ENTPROJECTPROFILECODE_0001/overview) 

## Links to SAP S/4HANA Cloud Help

As the integration of Poetry Slam Manager and SAP S/4HANA Cloud is supposed to work without any further authentification steps, you configure single sign-on in the tutorial. Besides this, URL mashups are created. User maintenance and authorizations are, of course, important, too. 

If you need more information about the topics, you can have a look at the following links as a reference: 

1. [Identity Authentication Configuration for SAP S/4HANA](https://help.sap.com/docs/cloud-identity/system-integration-guide/identity-authentication-configuration-for-sap-s-4hana)
2. [Enterprise Projects](https://help.sap.com/docs/SAP_S4HANA_CLOUD/f369b2eff700401494ba6e7c9a573288/97e2a4e0c9954d519ae3c862d7b7f8ac.html?q=enterprise%20projects)
3. [Identity and Access Management](https://help.sap.com/docs/SAP_S4HANA_CLOUD/a630d57fc5004c6383e7a81efee7a8bb/f25f9108740442c3804370f2d88a9bdd.html?q=Maintain%20Business%20Users)
4. [Configuration of Integrated SAP BTP Apps](https://help.sap.com/docs/SAP_S4HANA_CLOUD/0f69f8fb28ac4bf48d2b57b9637e81fa/1a2f16c997f741278347545969947d76.html?q=SAP%20S%2F4HANA%20Cloud%20Launchpad)
5. [Communication Management](https://help.sap.com/docs/SAP_S4HANA_CLOUD/0f69f8fb28ac4bf48d2b57b9637e81fa/2e84a10c430645a88bdbfaaa23ac9ff7.html?q=SAP%20S%2F4HANA%20Cloud%20Launchpad)

## Next Steps

Now that you have an overview of the aim and the prerequisites of the SAP S/4HANA Cloud integration, the next step is to [integrate the SAP BTP application with SAP S/4HANA Cloud](./34a-S4HC-Integration.md).