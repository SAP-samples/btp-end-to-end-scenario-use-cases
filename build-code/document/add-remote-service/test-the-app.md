# Test the flow end-to-end

## Prerequisites

- You have sucessfully deployed the application to your SAP BTP Runtime.
- You have assigned application roles before accessing the application. See [User Role Assignment](../deploy-cf.md#assign-the-user-roles).
- You have integrated your application with SAP Build Work Zone and accessed it via launchpad. See [Integrate Your Application with SAP Build Workzone](../integrate-workzone.md).

## Run and Test the Applicaion

1. Access your application via launchpad.
   
   ![Test app](../../images/add-remote-service/test-the-app/run-app02.png)

2. While creating a new incident, the value help for customers loads data from the integrated remote service.
  
   *  Choose **Create**
  
      ![run test](../../images/add-remote-service/test-the-app/test-app03.png)
   
   * Set **Title**, **Customer**, **Status** and **Urgency**. 
   * The value help for **Customer** fetches data from the remote server.
   * Create a conversation.
   * Choose **Create** to save the settings.
     
      ![run test](../../images/add-remote-service/test-the-app/test-app04.png)


## Summary

Congratulations! You have successfully developed, configured and deployed the Incidenent Management application using an external service.
