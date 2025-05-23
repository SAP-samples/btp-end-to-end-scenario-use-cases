# Test the Incident Management Application Locally

## Scenario

To increase your development speed, it is helpful to run and test your implementation in a local environment. In this section you will learn how to test the incident management application locally.

## Content

### Run the Incident Management Application

1. Choose the `Run and Debug` icon to run the application locally.

   ![open-terminal](../../images/add-remote-service/test-with-mock/run-app.png)

2. Select `incidents-api-access` in the popup.

   ![select-api](../../images/add-remote-service/test-with-mock/select-api.png)

3. Testing the scenario - while creating a new incident, the value help for customers loads data from the SAP S/4HANA Cloud.
   * Open the Incident Management application.
  
   *  Choose **Create**.
  
      ![run test](../../images/add-remote-service/test-with-mock/test-app03.png)
   
   * Set **Title**, **Customer**, **Status** and **Urgency**. 

   * The value help for **Customer** fetches data from the SAP S/4HANA Cloud.

      ![select-api](../../images/add-remote-service/test-with-mock/customer-list.png)

   * Create a conversation.

   * Choose **Create** to save the settings.
     
      ![run test](../../images/add-remote-service/test-with-mock/test-app04.png)

> [!Note]
> If you have not done the enhance Fiori UI chapter, creating conversations will not be visible in the UI.

> [!Note]
> By using a mock server you can easily test your implementation in a local environment. You find more details in the documentation for [Local Mocking](https://cap.cloud.sap/docs/guides/using-services#local-mocking)

## Next Step

[Deploy the application to Cloud Foundry Runtime](./deploy-to-cf.md)

