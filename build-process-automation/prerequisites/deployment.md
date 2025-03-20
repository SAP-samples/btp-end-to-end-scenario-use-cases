## Deployment of CAP Application

1. The CAP Application is already developed and you can find the application and its files here [Purchase Manager CAP Application](https://github.com/SAP-samples/s4hana-cloud-extension-process-automation/tree/purchase)

2. You can download the project or run the following command in the Terminal window:

```sh
    git clone https://github.com/SAP-samples/s4hana-cloud-extension-process-automation.git -b purchase
```

3. Assemble with the Cloud MTA Build Tool. Run the following commands to assemble everything into a single mta.tar archive:

```sh 
    npm install
    mbt build
```

4. Log in to your subaccount in SAP BTP:

```sh
    cf api <API-ENDPOINT>
    cf login
    cf target -o <ORG> -s <SPACE>
```
> You can find the API endpoint in the **Overview** section of your subaccount in the SAP BTP cockpit.

5. Run the following command to deploy the generated archive to the SAP BTP, Cloud Foundry runtime:

```sh
    cf deploy mta_archives/purchase_1.0.0.mtar 
```
