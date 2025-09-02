# Integrating Attachments and SAP Document AI into the Incident Management Application

## Add and Install required packages

1. Open Package.json and add the below dependencies:

```json
"dependencies": {
    ...
    "@sap-cloud-sdk/http-client": "^4.0.2",
     "form-data": "^4.0.3",
     "@cap-js/attachments": "^2.2.0"
},
```

> [!Note]
> These packages are required to enable attachment handling and to integrate with SAP Document AI.

2. From the root of the project, choose the burger menu, and then choose Terminal → New Terminal.

    ![prereq](../images/extend-service/open-terminal.png) 

3. Run `npm install` to install the required dependencies.

## Login to Cloud Foundry

1. In the terminal, log in to your subaccount in SAP BTP by following the below commands:

```sh
cf api <API-ENDPOINT>
cf login --sso
```

> [!Note]
> You can find the API endpoint in the Overview section of your subaccount in the SAP BTP cockpit.
![prereq](../images/prereq/retrieve_endpoint.png) 

2. Copy the URL to get the Temporary Authentication Code and paste it in new tab.

    ![prereq](../images/extend-service/get-temp-code.png)

3. Find the text box for **Enter the origin key** and click on **Sign in with alternative identity provider**.

    > Note: Ask the instructor for the origin key

    ![deploy-cf](../images/prereq/tenant_login.png)

    > Note: When choosing **Sign in with alternative identity provider**, if your are prompted to sign in, enter your username and password.
    > If you are signed in with Default Identity, you can choose to sign in with default identity provider.

4. Choose the **Copy** icon to get a temporary authentication code.

    ![deploy-cf](../images/prereq/deploy_auth_code.png)

5. Paste the copied code in the terminal and click the enter key.

6. Select the relevant org and enter.

7. Select the created space and enter.

## Enhance Schema of Incident Management Application for Attachements

1. Open `schema.cds` and add the following code snippets:

    1. Inside the `Incidents` entity, add the `attachments` Property:

        ```sh
        attachments: Composition of many Attachments;
        ```

    2. Import the `Attachments` Entity.

        ```sh
        using { Attachments } from '@cap-js/attachments';
        ```


## Next Step

[Extend the Incident Management Application with SAP document AI](./extend-doc-ai.md)