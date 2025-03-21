# Setup SAP Build Code in SAP BTP

##  Prerequisite 

You should have  an enterprise SAP BTP global account. If you don't have [Get an Account on SAP BTP Trial](https://developers.sap.com/tutorials/hcp-create-trial-account..html)

## Run the SAP Build Code Booster

1. In the SAP BTP cockpit, access your global account. It can be either trial or enterprise account.

2. Navigate to trial global account
    
    ![btp GA](./images/setup-build-code/btp-booster-GA.png)

3. Click on booster, select build code to create build code subscription.

    ![booster](./images/setup-build-code/booster.png)

4. After running the booster, in the popup window, choose **Navigate to Subaccount**.

    ![successful booster](./images/setup-build-code/booster-confirm.png)

## Additional Entitlements Required

Remote service integration to the developed CAP application requires the following additional entitlements and quotas in the SAP BTP cockpit:

| Service                           | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
| SAP S/4HANA Cloud Extensibility | api-access | 1 |

See [Entitlements and Quotas](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/00aa2c23479d42568b18882b1ca90d79.html?locale=en-US).

* While adding entitlement **SAP S/4HANA Cloud Extensibility**, please select the appropriate system under **Service Details: SAP S/4HANA Cloud Extensibility** dropdown.
* In the checkbox, check the **api-access** under Available Plans and add the service plans.

## Access Build Code through Subaccount

1. Navigate to global account. Click on **Account Explorer**, Click on **Subaccounts**. Choose your subaccount.

    ![btp GA](./images/setup-build-code/btp-GA.png)

2. Expand **Services**, Click on **Instances and Subscriptions**. Choose on **Subscriptions** tab then click on **SAP Build Code** to open build code lobby.

    ![btp subaccount](./images/setup-build-code/btp-subaccount.png)

