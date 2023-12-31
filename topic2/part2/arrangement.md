# Create Communication Arrangement

## Introduction 

In this exercise, you will create a communication arrangement which will expose the services defined in communication scenario and enable them to be accessed in the way defined in the communication system.

## Content

1. In your browser open the *SAP S/4HANA Cloud Customizing Tenant*.

2. Search for the **Communication Arrangements** application and open it.

  ![Alt text](img/0360-communication-arrangements-app.png) 

3. Choose **New** button.

  ![Alt text](img/0360-new-communication-arrangement.png) 
  
4. Choose scenario selection button.
  
  ![Alt text](img/0370-select-communication-scenario.png)

5. In the search field enter **{YOUR_ID}** and then select your scenario.

  ![Alt text](img/0380-communication-scenario-list.png) 

6. Leave the arrangement name as it is and choose **Create** button.

  ![Alt text](img/0390-create-communication-arrangement.png) 

7. In the **Common Data** section select communication system **DEVEXT_WORKSHOP**. 

8. Choose User Name selection button in the section **Inbound Communication**.

  ![Alt text](img/0400-select-communication-system.png) 

9. Select **DEVEXT_WORKSHOPPER** user.

> We use basic authentication here to simplify the API test in browser. For the access from CAP application we will still use user propagation approach with SAML Assertion.

  ![Alt text](img/0410-select-communication-user.png) 

10.  Copy the URL for the service and choose **Save** button.

  ![Alt text](img/0420-save-communication-arrangement.png)

## Result

You have created the communication arrangement. Now your new service is fully accessible.

[Next tutorial: Test the API](./test.md)

## Further reading / Reference Links

- [Communication Management](https://help.sap.com/docs/SAP_S4HANA_CLOUD/0f69f8fb28ac4bf48d2b57b9637e81fa/2e84a10c430645a88bdbfaaa23ac9ff7.html)