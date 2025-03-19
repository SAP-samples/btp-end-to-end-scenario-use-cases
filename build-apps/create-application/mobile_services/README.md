# Build Your App and Install it on a Mobile Device

## Introduction

For apps installed on mobile devices, SAP Build Apps uses SAP Mobile Services for authenticating mobile users with Cloud Identity Services. This allows integration with S4/HANA services via destinations on SAP BTP. In this section, you will use the build service to build an APK file that can be deployed on an Android device for local testing.

* If you want to build and deploy to Google Play, see [Android builds](https://help.sap.com/docs/build-apps/service-guide/android-builds).
* If you want use an iOS device, see [IOS builds](https://help.sap.com/docs/build-apps/service-guide/ios-builds).

## Prerequisites

* A keystore file. [Android builds](https://help.sap.com/docs/build-apps/service-guide/android-builds) explains how to generate one.
* The destination used must have the parameter **MobileEnabled** set to **true**.
* An Android device that you are allowed to install APKs on. If you do not have such a device, it is possible to use an emulator.

## Configure Mobile Services

1. Choose **Publish** at the top section of the App Editor and **Build and Deploy**

    ![image](https://github.com/user-attachments/assets/3c93842f-b3a1-4e7e-8568-2245e3efae4f)


2. Select tab **Mobile Services** and **Enable SAP Mobile Services**. 
        ![image](https://github.com/user-attachments/assets/2e61155e-dde5-4215-add3-764098ee25a0)

3. Select the API Endpoint which you also used in the deployment step and the same organization and space and click on the **Continue** button.
   
      ![image](https://github.com/user-attachments/assets/d91bc2d6-4136-4d3b-aade-057a8e4c3be7)


4. The Mobile Services authentication step may take up to five minutes.
        ![image](https://github.com/user-attachments/assets/c7746bd0-d83c-48d5-98cf-2c1dbce51b6f)

5. As a result you should see that the app is connected to mobile services:
        ![image](https://github.com/user-attachments/assets/d1fb890b-ec7e-464c-b067-8568b3548c53)

## Build

1. Switch to the **Build** tab in the header navigation and select **Create Configuration**.

    ![image](https://github.com/user-attachments/assets/07c6049c-8552-435d-81c0-19e4cee0dbdb)


2. Choose **Android** as target platform

3. Add a name of the configuration e.g. mobile
       ![image](https://github.com/user-attachments/assets/7f89694c-9771-425b-8c51-74464d34a715)

4. Define a Display Name and a package Identifier.

5. Choose **APK** as target File Type

6. Upload your keystore file and enter the passwords and alias.
    ![image](https://github.com/user-attachments/assets/a0f9c484-2871-4a54-9110-d674b2fde162)


7. Ignore the Image assets and screenshot settings and select **Create** button.

8. Select  **...** and click on **Build**.

    ![image](https://github.com/user-attachments/assets/eed7a87a-3f81-4701-b30f-14ffae7d8047)

10. Choose a version e.g. 1.0.0 and select **Build** button.

11. Wait until the new build has the status **Delivered** and open it with a click on the line
    ![image](https://github.com/user-attachments/assets/4382d36d-790e-4d12-b24e-eedaf98febe4)

12. **Download** the mobile app and save the APK file to your computer.    
    ![image](https://github.com/user-attachments/assets/5b30eadd-2fc2-4cdd-9767-e12fa30dc10c)


## Install and Run

1. Install the APK on your Android device.

    This will vary according to the device you are using. If you are using a physical device, you will transfer the APK from your computer to the device (via USB usually). You will then locate the file on the device and start the installation. If you are using an emulator as shown below, simply draging the APK file onto the emulator might start the installation.

    ![Install](./images/APK_01.png)

2. Find the app on your device.

    ![Installed](./images/APK_02.png)

3. Start the app.

    ![Start Setup](./images/APK_03.png)

4. Choose **GET STARTED** and follow the instructions. Once you have finished the configuration process, the deployed app should start automatically.

    ![Running](./images/APK_04.png)

The app should behave as before, with live data displayed that is read from the backend system and navigation to the details page by clicking on a record.
