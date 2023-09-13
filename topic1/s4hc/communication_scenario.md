# Setting up Custom Communication Scenario in SAP S/4HANA Cloud

## Usage scenario / Introduction 

Since all the communication settings in S/4HANA Cloud are based on communication scenarios, you need to create a custom communication scenario which includes the services provided by the custom business objects.


## Task Flow  

In this exercise, you will perform the following tasks:

* Create and publish a custom communication scenario


## Content

### Task 1: Create a Custom Communication Scenario

   1. To expose the Custom Business object we have to create a custom communication scenario.
      
      a) Open the Custom Communication Scenario application

         ![custom cs](./img/cs_app.png)

      b) Select **New**

         ![add cs](./img/cs_new.png)

      c) Add the scenarion name GRCHECK_YOUR_ID and a description e.g. GR Checklist API. Select **New**

         ![add cs](./img/cs_new2.png)

   2. Select the custom business object
     
      a) Select the Inbound Services tabulator and press **Add**
       
         ![add inbound service](./img/cs_add_inbound_service.png)
     
      b) Choose the **YY1_GRCHECK_YOUR_ID_CDS** and press **Select**

         ![select bo](./img/cs_select_service.png)

      c) Repeat it with the **YY1_CHECKLIST_\<YOUR_ID\>_CDS** custom business object

         ![select bo](./img/cs_checklist_select_service.png)

### Task 2: Publish the Custom Communication Scenario

   1. Publish the communication scenario
      
      a) **Save** your changes and then press **Publish**

         ![save and publish cs](./img/cs_save.png)

      > **Note**
      > 
      > It can be that the publishing process fails because of several simultaneous publishing actions from different users. Just repeat the publishing again afterwards in this case.
      
      b) After a while the status of the communication scenario switch to **Published**

         ![save and publish cs](./img/cs_published.png)