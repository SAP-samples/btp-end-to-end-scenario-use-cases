# Prerequisites

## Add Dependencies of SAP AI SDK

1. Open Package.json and add the below dependencies

```json
    "dependencies": {
        ...
        "@sap-ai-sdk/foundation-models": "^1.12.0",
        "@sap-ai-sdk/langchain": "^1.12.0",
        "csv-parser": "^3.2.0",
        "fs": "^0.0.1-security",
        "natural": "^8.0.1",
    },
```

> [!Note]
> These packages are needed for

2. Open the terminal and run `npm install` to install the required dependencies.

## Login to Cloud Foundry

1. From the root of the project, choose the burger menu, and then choose Terminal → New Terminal.

    image

2. Log in to your subaccount in SAP BTP by following the below commands:

```sh
cf api <API-ENDPOINT>
cf login --sso
```

> [!Note]
> You can find the API endpoint in the Overview section of your subaccount in the SAP BTP cockpit.
![deploy-cf](../images/deploy-cf/retrieve_endpoint.png) 

3. Copy the URL to get the Temporary Authentication Code.

image

4. Find the text box for **Enter the origin key** and click on **Sign in with alternative identity provider**.

    > Note: Ask the instructor for the origin key

    ![deploy-cf](../images/deploy-cf/tenant_login.png)

    > Note: When choosing **Sign in with alternative identity provider**, if your are prompted to sign in, enter your username and password.
    > If you are signed in with Default Identity, you can choose to sign in with default identity provider.

5. Choose the **Copy** icon to get a temporary authentication code.

    ![deploy-cf](../images/deploy-cf/deploy_auth_code.png)

6. Paste the copied code in the terminal and enter.

7. Select the relevant org and enter.

8. Select the created space and enter.

## Setup Incident Management Application

1. Under test/data folder, delete the sap.capire.incidents-vectorEmbeddings.csv file as we will we feeding the data in later stage.

2. The sample data generated in the previous steps, creates the **data** folder in the **test** folder. To use the data for productive usgae, move the **data** folder to the **db** folder. Open the terminal, and run the following command to copy the csv files.

```sh
mv test/data db/data
```

3. Do the productive build for your application, by running the below command in the terminal.


```sh
cds build --production
```

4. Deploy the csv files to the hana database by running the below command in the terminal.

```sh
cds deploy --to hana
```

5. Create a binding to the ai-core service by following the below commands in the terminal.

```sh
cf create-service destination lite <destination-name>
cds bind --to <destination-name>
 
```

## Next Step

[Extend the Incident Management Application](extend-service.md)
