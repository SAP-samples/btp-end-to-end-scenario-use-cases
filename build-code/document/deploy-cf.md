# Deploy the Application to SAP BTP, Cloud Foundry Runtime

This section describes how to deploy the application to the SAP BTP, Cloud Foundry runtime.

## Prerequisites

1. [Add Test cases using Joule](./testcase.md).
 
2. The sample data generated in the previous steps, creates the **data** folder in the **test** folder. When deploying the application, move the **data** folder to the **db** folder. Open the terminal, and run the following command to copy the csv files.

    ```sh
    cp test/data db/data
    ```

3. Open app &rarr; incidents &rarr; webapp &rarr; manifest.json, and copy the below code snippet under "sap.app"

    ```sh
    "sap.app": {
        .....
        "crossNavigation": {
            "inbounds": {
                "intent1": {
                "signature": {
                    "parameters": {},
                    "additionalParameters": "allowed"
                    },
                "semanticObject": "Incidents",
                "action": "display"
                }
            }
        },
        ....
    ```

    > Note: This code snippet is required to access and make the application clickable, while accessing the application via Build Workzone.


> [!Note]
> **UI Application name will be common for all the users. To uniquely identify your application, make the following changes.**

4. UI Application name can be `incidentmanagement<your-initials><unique-random-number>`. For example, if your name is `John Doe`, then the project name would be **incidentmanagementjd12**, (12 is some random number). 

    1. Under **app -> incident-management -> webapp**, replace incidentmanagement with new name in below files.

        - Component.js
        - index.html
        - manifest.json

        > Note: Do Find all and replace *incidentmanagement* with *incidentmanagementjd12*. 


## Deploy the Application

The final step in SAP Build Code is to deploy the application to the SAP BTP, Cloud Foundry runtime. This process also involves the automatic creation of destinations, enabling ODATA services to be utilized by other tools such as SAP Build Apps.

1. Navigate to **Task Explorer** and run **Enable Discovery and Deploy**.

    ![deploy-cf](../images/deploy-cf/deploy_cf_enable.png)

2. Check if the task has been launched in the terminal.

    ![deploy-cf](../images/deploy-cf/deploy_cf_terminal.png)

3. During the deployment, a new page pops up asking you to sign in to Cloud Foundry. Follow these steps:

    1. In the **Enter Cloud Foundry Endpoint** field, enter the **API Endpoint** from SAP BTP Cockpit.

        > Note: The Cloud Foundry Endpoint can be retrived from SAP BTP Cockpit.
        ![deploy-cf](../images/deploy-cf/retrieve_endpoint.png) 

    2. Select **SSO Passcode** as an authentication method.

        ![deploy-cf](../images/deploy-cf/ssopasscode.png)

    3. Choose **Open a new browser page to generate your SSO passcode** to sign in to your subaccount in SAP BTP, which opens in a new browser.

    4. Find the text box for **Enter the origin key** and enter **pesworkshops-platform** and click on **Sign in with alternative identity provider**.

        ![deploy-cf](../images/deploy-cf/tenant_login.png)

        > Note: When choosing **Sign in with alternative identity provider**, if your are prompted to sign in, enter your username and password.
        > If you are signed in with Default Identity, you can choose to sign in with default identity provider.

    5. Choose the **Copy** icon to get a temporary authentication code.

        ![deploy-cf](../images/deploy-cf/deploy_auth_code.png)
    
    6. Paste the copied code in the **Enter your SSO Passcode** field in the Cloud Foundry login page.

    7. Choose **Sign In**.

        ![deploy-cf](../images/deploy-cf/deploy_sign_in.png)

4. In the **Cloud Foundry Target** section, do the following:

    1. In the **Select Cloud Foundry Organization** dropdown menu, select the respective Org name.

    2. In the **Select Cloud Foundry Space** dropdown menu, select the created dev space in the prerequisite step. 

    3. Choose **Apply**.

        ![deploy-cf](../images/deploy-cf/cf_targets.png)

5. Check the terminal for the deployment progress. 

6. Once the deployment is completed, the application is started log and you can see the Overview URL.

    ![deploy-cf](../images/deploy-cf/deploy_completed.png)

## Assign the User Roles

### Create a Role Collection and Add a Role

1. Open the SAP BTP cockpit and navigate to your subaccount.

2. Choose **Security** > **Role Collections**.

    ![deploy-cf](../images/deploy-cf/role_create.png)

3. In the **Search** field, type your project name. For example, project name is **Incidentsjd12**, and choose **incidentsjd12-Support-dev**.

    ![deploy-cf](../images/deploy-cf/select_support_role.png)

4. Choose **Edit**.

    > Make sure the **Support** role is already listed in the **Roles** tab.

    ![deploy-cf](../images/deploy-cf/check_support.png)

5. In the **Users** tab:

    1. Type your username in the **ID** field, and select your username from the suggestions.

    2. Select **...accounts.ondemand.com(application users)** from the **Identity Provider** dropdown.

    ![deploy-cf](../images/deploy-cf/add_user.png)

6. Choose **Save**.

## Next Steps

Integrate Your Application with SAP Build Work Zone by following the steps at [Integrate with SAP Build Work Zone](integrate-workzone.md)
