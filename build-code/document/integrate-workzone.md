# Integrate Your Application with SAP Build Work Zone, Standard Edition

This tutorial shows you how to subscribe to the SAP Build Work Zone, standard edition.

## Prerequisite

Deploy your application in SAP BTP, Cloud Foundry and test using [Deploy in SAP BTP, Cloud Foundry Runtime](deploy-cf.md)

## Subscribe to SAP Build Work Zone, standard edition

> [!Note]
> If you have already subscribed to SAP Build Work Zone, skip the below steps and proceed with **Assign SAP Build Work Zone, standard edition role collection**

1. Navigate to your subaccount and choose **Services** &rarr; **Service Marketplace** on the left.

2. Search for the **SAP Build Work Zone, standard edition** tile and choose **Create**.

    ![Create SAP Build Work Zone, standard edition](../images/integrate-workzone/create_workzone_instance.png)

3. Keep the default setting for **Service** and choose **foundation** for **Plan**.

4. Choose **Create**.

    ![New Instance or Subscription](../images/integrate-workzone/new_instance_dialog.png)

You have now subscribed to the SAP Build Work Zone, foundation plan.

## Assign SAP Build Work Zone, standard edition role collection

You need to assign your user to the **Launchpad_Admin** role collection, so you don't get an error accessing the **SAP Build Work Zone, standard edition** site later on.

1. Choose **Security** &rarr; **Users** on the left.

2. Choose your user.

3. Under **Role Collections** on the right, choose **Assign Role Collection** and assign the **Launchpad_Admin** role collection to your user.

    ![Add role](../images/integrate-workzone/add_launchpad_admin_role.png)

    You've assigned the **Launchpad_Admin** role collection to your user.

> You might need to log out and log back in to make sure your new role collection is taken into account.

> See section [Initial Setup](https://help.sap.com/viewer/8c8e1958338140699bd4811b37b82ece/Cloud/en-US/fd79b232967545569d1ae4d8f691016b.html) in the SAP Build Work Zone, standard edition's documentation for more details.


##  Integrate your application with SAP Build Work Zone, standard edition

#### Update content

1. Open your subaccount and navigate to **Instances and Subscriptions**.

2. Choose the application **SAP Build Work Zone, standard edition**.

    ![WorkZone0](../images/integrate-workzone/integrate_launchpad_0.png)

3. In the menu on the left side, choose the icon for **Channel Manager**.

4. Choose the refresh icon to fetch the updated content.

    ![WorkZone1](../images/integrate-workzone/launchpad1.png)

#### Add application to Content Explorer

1. Choose **Content Manager** icon in the menu on the left and choose the **Content Explorer** button.

    ![WorkZone1](../images/integrate-workzone/content-explorer.png)

2. Select the tile HTML5 Apps with your respective subdomain name.

    ![WorkZone1](../images/integrate-workzone/html5_apps.png)

3. In the items table, set checkmark for the application Incidents and choose the button Add.

    ![WorkZone1](../images/integrate-workzone/ce_checkbox.png)

    > Note: Check the application which you have created during the project creation.

#### Create a group

1. Go back to the **Content Manager**, choose Create → Group.

    ![WorkZone1](../images/integrate-workzone/create_group.png)

2. Add the title Incident Management Group.

3. In the Assignment Status, choose the slider to assign the Incident-Management app to the group.

4. Choose Save.
    
    ![WorkZone1](../images/integrate-workzone/group_enable.png)


#### Add application to the Everyone role
1. Back in the Content Manager, choose role Everyone and choose Edit.

2. In the Assignment Status, choose the slider to assign the Incident-Management app to the role.

3. Choose Save.

    ![WorkZone1](../images/integrate-workzone/everyone_enable.png)

#### Create site

1. Navigate to Site Directory and choose **Create Site**.

    ![WorkZone1](../images/integrate-workzone/create_site.png)

2. Enter the site name as *Incident Management Site* and choose **Create**.

    ![WorkZone1](../images/integrate-workzone/create_site1.png)

3. Now, you are forwarded to your created site.

#### Test your site

1. Navigate to Site Directory and find your site.

    ![WorkZone1](../images/integrate-workzone/site_directory.png)

2. Choose **Go to site**.

    ![WorkZone1](../images/integrate-workzone/gotosite.png)

3. Choose the Incident Management application from the launch page.

    ![WorkZone1](../images/integrate-workzone/application_tile.png)

    You should be able to see the list report page.

    ![WorkZone1](../images/integrate-workzone/application.png)

## Next Step

Test the flow end to end by following the steps at [Test the Application End to End](e2e-testing.md).



