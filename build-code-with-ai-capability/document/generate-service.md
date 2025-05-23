# Add CDS Services Using Joule

This section describes how to generate CDS services using Joule.

## Prerequisite

You have enhanced the sample data following the steps at [Enhance Sample Data](enhance-sample-data.md).

## Add Services

1. Choose the **Joule** icon. Start typing ```/cap-edit``` in the Joule prompt and select **/cap-edit-model** from the suggestions to create a service.

    ![edit-model](../../build-code/images/generate-service/editmodel.png)

    > **Note:** By default, **/cap-edit-model** should be displayed in a text box.

2. The Joule prompt will be prefilled with **/cap-edit-model**. Paste the following prompt to generate a service:

    ```
    Add 1 service named 'ProcessorService' with projection on the entities 'Incidents' and 'Customers'.
    Add additional service named 'AdminService' with projection on the entities 'Incidents' and 'Customers'.
    Make ProcessorService only accessible by the user with 'Support' role.
    Similarly, make AdminService to be only accessible by the user with 'Admin' role.
    Remove path parameters and remove other services.
    Enable draft editing for Incidents entity of ProcessorService using annotation.
    Make Customers entity of ProcessorService as readonly.
    ```

3. Choose the **Send** icon.

    ![cap-edit-model-prompt](../../build-code/images/newprompts/service.png)

4. Choose **Accept**.

    ![cap-accept-service](../../build-code/images/generate-service/code.png)
   
> [!Tip]
> - CDS service definition exposes entities from the database schema (schema.cds) as part of  service layers with role-based access to services.
> -  Modular Service Definitions - Services (ProcessorService and AdminService) allow controlled access to data.
> - Role-Based Access 
    - ProcessorService → Support staff can manage incidents and customers.
    - AdminService → Admin users have full access.
> - Projections on Entities - The original database entities are not directly exposed, only projected versions are. This allows customization, filtering, or restricting access to certain fields (if needed in the future).
>  OData draft enablement in CAP allows users to save work-in-progress data before final submission. This is especially useful in SAP Fiori applications, where users may enter data in multiple steps and want to avoid losing changes.

5. Open **service.cds** in the project explorer and validate the generated service. 

    ![validate-gen-service](../../build-code/images/generate-service/code_struct.png)

6. Go to **Storyboard**. In the **Services** section, make sure **ProcessorService** and **AdminService** have been created.

    ![validate-edit-model](../../build-code/images/generate-service/storyboardcheck.png)

> [!Note]
> Joule may generate a different code for the service. Please make sure the final `srv/service.cds` file looks like this: 


    using { sap.capire.incidents as my } from '../db/schema.cds';

    @requires: 'Support'
    service ProcessorService {
        @odata.draft.enabled
        entity Incidents as projection on my.Incidents;
        @readonly
        entity Customers as projection on my.Customers;
    }

    @requires: 'admin'
    service AdminService {
        entity Customers as projection on my.Customers;
        entity Incidents as projection on my.Incidents;
    }


## Next Step

[Add Business Logic with Joule](custom-logic.md)
