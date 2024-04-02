# Integrate the App in SAP Build Workzone and SAP Mobile Start

In this section you will create a SAP Build Workzone site and call it on your mobile device using SAP Mobile Start.

## Create a SAP Build Workzone Site

1. Start SAP Build Workzone

   ![](./img/0200-open-workzone.png)

2. Add your application to the Content Manager

   ![](./img/0210-content-manager.png)
   
   * Select HTML5Apps and search for your application ID.
   * Select the app and activate it. Press **Add**

   ![](./img/0220-add-html5app.png)

3. Create a new Role
   
      ![](./img/0230-create-role.png)

   * Choose Launchpad_\<yourid> as Title and ID. Assign your application to the role and press **Save**

      ![](./img/0231-create-role.png)

4. Map your user to the new Role Collection. Go to the SAP BTP Cockpit. Select Security - Role Collection and select the Launchpad_\<yourid\> role collection
   ![](./img/0240-map-role-to-user.png)

   * Select **Edit**. And add a new user with you email address as ID and E-mail. Select as Identity Provider  **pesworkshops.accounts.ondemand.com (application user)**. Press **Save**
   
   ![](./img/0245-map-role-to-user.png)

5. Go back to SAP Build Workzone. In the Content Manager create a new Group. Call it group_\<yourid> and assign your application to it. 
   ![](./img/0250-create-group.png)

6. Create a new site. Call it Launchpad_\<your_id>. 
   ![](./img/0260-create-site.png)

   * At the new site select settings.

      ![](./img/0262-create-site.png)

7. Select **Edit** and assign your role to the site. Press **Save**
   ![](./img/0265-create-site.png)

8. Call the site URL to open the launchpad.


## Call your app with SAP Mobile Start

Now we will install the SAP Mobile Start application on your mobile device and start the application from it.

1. In the launchpad open the settings. 

   ![](./img/0280-setup-mobile-start.png)

2. Select SAP Mobile Start Application and choose your device type. Select **Install**. Scan the QR code. You can also install the app from the mobile App Store - search for SAP Mobile Start. 
   ![](./img/0282-setup-mobile-start.png)

3. Start the SAP Mobile Start app. In the launchpad select **Register** and scan the QR code with theSAP Mobile Start app.
![](./img/0285-setup-mobile-start.png)

4. Logon with your email and password using pesworkshops.accounts.ondemand.com. Enter a passcode. Test your application.