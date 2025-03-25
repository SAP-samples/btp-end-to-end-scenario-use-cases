# Deploy and Run the Application on Cloud Foundry with SAP S/4HANA Cloud Backend

## Usage Scenario

Deploy the project to Cloud Foundry using the MTA build file.

## Prerequisites

* You have prepared the project for productive usage in [previous exercise](./extend-app-cf.md).

## Content
In this section you will extend the existing MTA build file with the settings for SAP S/4HANA Cloud extension service.


### Deploy the Application

1. Navigate to **Task Explorer** and run **Enable Discovery and Deploy**.

    ![deploy-cf](../../images/deploy-cf/deploy_cf_enable.png)

> [!Note]
> Make sure you have already logged in into Cloud Foundry in [previous exercise](../deploy-cf.md#deploy-the-application)  

2. Once deployment is successful you will get confirmation message in terminal

   ![deploy-mtar-success](../../images/add-remote-service/deploy-to-cf/deploy_mtar_success.png)

Before you can access the application, make sure you have [Assign Application Roles](../deploy-cf.md#assign-the-user-roles) in previous exercise.

Make sure in previous exercise you have [Integrate with SAP Build Workzone](../integrate-workzone.md) to access the application in launchpad.

# Next

[Test the end to end flow](./test-the-app.md)