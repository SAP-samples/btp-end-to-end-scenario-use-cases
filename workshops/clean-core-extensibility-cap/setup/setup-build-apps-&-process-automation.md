# Setup SAP Build Apps and SAP Build Process Automation

In this section you will use a booster to setup the landscape for using **SAP Build Apps** and **SAP Build Process Automation**. To do this you must be **administrator** of your global SAP BTP account. The process described here will create a new subaccount but you can use the booster to configure an existing subaccount as well.

## Prerequisite

If you do not have an enterprise SAP BTP Global Account, you can set up trial account by following [Get an Account on SAP BTP Trial](https://developers.sap.com/tutorials/hcp-create-trial-account..html)

You have the required entitlements for it. 
- [Entitlements for SAP Build Apps](../../../build-apps/setup/btp/pre-requisite.md)
- [Entitlements for SAP Build Process Automation](../../../build-process-automation/prerequisites/pre-requisite.md)

## Setup SAP Build Apps in SAP BTP using Booster

1. Logon to the **SAP BTP Cockpit** and select your global account.

    ![Global account](./images/newbooster00.png)

2. Select **Boosters**. Search for SAP Build Apps. Press **Start**.

    ![Booster](./images/newbooster01_steps.png)

3. When the prerequisites are checked successfully, press **Next**.

    ![Booster](./images/newbooster02_steps.png)

4. Select **Create Subaccount** and press **Next**.

    ![Booster](./images/newbooster03_steps.png)

    You can delete unecessary entitlements but make sure that **SAP Build Apps** and **SAP Build Workzone, standard edition** remain. For testing purpose you can choose the **free** service plan, for productive usage take the **standard** plan. If you are using the mock server in this mission, you also need **Cloud Foundry Runtime**. Adjust the remaining fields as necessery and then press **Next**.

    ![Booster](./images/newbooster04_steps.png)

5. In the section **Custom Identity Provider for Applications**, select the tenant you want to use, then press **Next**.

    ![Booster](./images/newbooster05_steps.png)

6. Check your settings and press **Finish**

    ![Booster](./images/newbooster06_steps.png)

7. Choose **Navigate to subaccount**, which will open the subaccount on another tab. Come back to this tab and press **Close**.

    ![Booster](./images/newbooster07_steps.png)

### Result

The subaccount has been configured with a custom IAS tenant and your user has been assigned the relevant role collections.

![Booster](./images/newbooster12_boxes.png)

### Assigning  Additional Users with Roles for Build Apps
1. Open the SAP BTP cockpit and navigate to your subaccount.

2. If yoChoose **Security → Users**.

    ![role-collection-create](./images/setup-sbpa/users.png)

3. Search for your user in the list, and click on your user.

> [!Note]
> If you want to onboard a new user, click on **Create**, and add your user ID.
![role-collection-create](./images/setup-sbpa/create.png)

4. Once you have opened the user, click on **Assign Role Collection**.

    ![role-collection-create](./images/setup-sbpa/assign.png)

5. In Assign Role Collection, Search for **BuildApps** in the Search box.

6. Select check mark for the below mentioned roles, and click on **Assign Role Collection**.
    - BuildApps_Administrator	
    - BuildApps_Developer

7. Choose on Save.

**You have successfully assgined roles to the user.**


## Setup SAP Build Process Automation in SAP BTP using Booster

1. Navigate to the Global Account.

2. Click on **Boosters** in the left menu.

3. Type *Process Automation* in the Search box.

4. Click on **Start** button on the tile **Set up account for SAP Build Process Automation**.

    ![booster](../../../build-process-automation/prerequisites/images/booster.png)

5. After **Prerequisites** check is **Done**, click on **Next**.

6. Click on **Select Subaccount**, and click on **Next**.

    ![booster](../../../build-process-automation/prerequisites/images/select_subaccount.png)

    > If you want to create new Subaccount, choose the other option.

7. In Configure Subaccount section, do the following:

    1. You can delete unnecessary entitlements but make sure that **SAP Build Process Automation** remain. Preferably take the **standard** plan.

    2. Choose the relevant Subaccount, its respective Org and Space.

    3. Choose **Next**.

8. Under **Add Users**, you can add your ID.

9. Review and click on **Finish** to complete the booster.

10. Once the booster is completed, click on **Navigate to Subaccount**, which will open the Subaccount on another tab.

    ![booster](../../../build-process-automation/prerequisites/images/navigate.png)

## Assign roles to the user. 

1. Open the SAP BTP cockpit and navigate to your subaccount.

2. If yoChoose **Security → Users**.

    ![role-collection-create](./images/setup-sbpa/users.png)

3. Search for your user in the list, and click on your user.

> [!Note]
> If you want to onboard a new user, click on **Create**, and add your user ID.
![role-collection-create](./images/setup-sbpa/create.png)

4. Once you have opened the user, click on **Assign Role Collection**.

    ![role-collection-create](./images/setup-sbpa/assign.png)

5. In Assign Role Collection, Search for **Process** in the Search box.

6. Click on check mark for the below mentioned roles, and click on **Assign Role Collection**.

    - ProcessAutomationAdmin	
    - ProcessAutomationDelegate
    - ProcessAutomationDeveloper	
    - ProcessAutomationParticipant

    ![role-collection-create](./images/setup-sbpa/select.png)

**You have successfully assgined roles to the user.**