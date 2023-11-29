# Expose Service

## Introduction 

In this exercise, you will create objects needed to expose your data model as an OData service.

## Task Flow  

In this exercise, you will perform the following tasks:

1. Create service definition
2. Create service binding

## Content

### Task 1: Create service definition

1. Right click on your data definition object.

2. Select **New Service Definition** in the popup menu.

  ![Alt text](img/0180-new-service-definition.png) 

3. Enter the following details and choose **Next**:
  - **Z_ENTERPRISEPROJECT_{YOUR_ID}** in the **Name** field
  - **Service Definition for Enterprise Project** in the **Description** field

  ![Alt text](img/0190-service-definition-details.png)

4. On the next screen select your transport and then choose **Next** button.

  ![Alt text](img/0200-transport-for-service-definition.png) 

5. Assign aliases to your entities as in the code below:

  ~~~abap
  @EndUserText.label: 'Service Definition for Enterprise Project'
  define service Z_ENTERPRISEPROJECT_{YOUR_ID} {
    expose ZC_ENTERPRISEPROJECT_{YOUR_ID} as A_EnterpriseProject;
    expose I_EntProjProcessingStatus  as I_EntProjProcessingStatus;
    expose I_ProjectProfileCode       as I_PorjectProfileCode;
  }
  ~~~

  ![Alt text](img/0210-activate-service-definition.png) 

### Task 2: Create service binding

1. Right click on your service definition.

2. Select **New Service Binding** option in the popup menu.

  ![Alt text](img/0220-new-service-binding.png) 

3. Enter the following details and then choose **Next** button:
  - **ZAPI_ENTERPRISEPROJECT_04_{YOUR_ID}** in the **Name** field
  - **API V4 for Enterpise Project** in the **Description** field
  - **OData V4 - Web API** in the **Binding Type** list box

  ![Alt text](img/0230-service-binding-details.png) 

4. On the next screen select your transport and choose **Finish** button.

  ![Alt text](img/0240-transport-for-service-binding.png) 

5. Choose **Activate** button.

  ![Alt text](img/0250-activate-service-binding.png)

6. After the service binding was activated, choose **Publish** button.  

  ![Alt text](img/0260-publish-service-binding.png)


## Result

You have created a service definition and a service binding. Now your service is ready to be consumed. 

[Next tutorial: Create Communication Scenario](./scenario.md)

## Further reading / Reference Links

- [Service Definition](https://help.sap.com/docs/ABAP_PLATFORM_NEW/fc4c71aa50014fd1b43721701471913d/b09e4d53bfca4544a9f8910bcc2cd9d6.html)
- [Service Binding](https://help.sap.com/docs/ABAP_PLATFORM_NEW/fc4c71aa50014fd1b43721701471913d/b58a3c27df4e406f9335d4b346f6be04.html)
