# Deploy and Run the Application on Cloud Foundry with SAP S/4HANA Cloud Backend

## Usage Scenario

Deploy the project to Cloud Foundry using the MTA build file.

## Prerequisites

* You have prepared the project for productive usage.

## Content
Extend the existing MTA build file with the settings for SAP S/4HANA Cloud extension service.


### Deploy the Application

1. Add SAP S/4HANA Cloud API access service. Right-click on the *mta.yaml* file and choose **Open with ... - Text Editor**.
2. Add the following code snippet to the *resource* section

    ```yaml
      - name: incidents-api-access
        type: org.cloudfoundry.managed-service  
        parameters:
          path: ./bupa.json
          service: s4-hana-cloud
          service-plan: api-access
          system-name: <system-name>
    ```

> [!Note]
> For **system-name**, enter the name of your registered SAP S/4HANA Cloud system.
`

3. Navigate to **Task Explorer** and run **Enable Discovery and Deploy**.

    ![deploy-cf](../../images/deploy-cf/deploy_cf_enable.png)

> [!Note]
> Make sure you have already logged in into Cloud Foundary in [previous exercise](../deploy-cf.md#deploy-the-application)  

4. Once deployment is successful you will get confirmation message in terminal

   ![deploy-mtar-success](../../images/add-remote-service/deploy-to-cf/deploy_mtar_success.png)

Before you can access the application, you need to [Assign Application Roles](../deploy-cf.md#assign-the-user-roles).

Make sure in previous exercise you have [Integrate with SAP Build Workzone](../integrate-workzone.md) to access the application in launchpad.

# Next

[Test the end to end flow](./test-the-app.md)