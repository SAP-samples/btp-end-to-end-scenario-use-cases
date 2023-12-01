# Create Behavior Definition

## Introduction 

In this exercise, you will create a behavior definition projection which will contain only the necessary scope of the functions provided by the basic business objects.

## Content

1. Right click on the root projection view **ZC_PROJECT_{YOUR_ID}**.

2. Select **New Behavior Definition** option in the popup menu.
  
  ![Alt text](img/0160-new-behavior-definition.png) 

3. Enter the following details and then choose **Next**:
   
   - **Behavior Definition for Project** in the **Description** field.
   - **Projection** in the **Implementation Type**

  ![Alt text](img/0163-behavior-definition-details.png) 

4. On the next screen select your transport and then choose **Finish** button.

  ![Alt text](img/0166-behavior-definition-transport.png) 

4. Replace the proposed code with the one below (considering **{YOUR_ID}** replacement) to restrict all the operations except of *create*:

  ~~~abap
  projection;
  strict ( 2 );

  define behavior for ZC_PROJECT_{YOUR_ID}
  {
    use create;
    use association to_EnterpriseProjectElement { create; }
  }

  define behavior for ZC_PROJECT_EL_{YOUR_ID}
  {
    use association _EnterpriseProject;
  }
  ~~~

  ![Alt text](img/0170-activate-behavior-definition.png)

## Result

You have created the behavior definition projection. You business object projection is now ready to be exposed as a service.

[Next Tutorial: Expose an OData Service](./expose.md)

## Further reading / Reference Links

- [Behavior Definition Projection](https://help.sap.com/docs/abap-cloud/abap-rap/projection-behavior-definition)