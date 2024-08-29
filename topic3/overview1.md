# Develop and Deploy Full-Stack CAP Application

## Solution Diagram

<div align="center">
	<img src="Images/basic.png" width="800" />
</div>

The Incident Management application uses the following sample business scenario:

ACME is a popular Electronics company. ACME hires call center support representatives to process and manage customer incidents. A call center support representative (Processor) receives a phone call from an existing customer and creates a new incident on behalf of the customer. 

<div align="center">
	<img src="Images/Data-Subjects.drawio.svg" width="400" />
</div>

The newly created incident is based on a customer complaint received during the phone call so the call center support representative also adds the conversation with the customer to the incident.


```mermaid
journey
    title Your Journey to Develop and Deploy Full-Stack CAP Application
    section Base Application
      Create Dev Space in SAP Business Application Studio: 5: Me
      Build a CAP Application: 5: Me
      Add SAP Fiori Elements UIs: 5: Me 
    section Custom Logic
      Add Custom Logic: 5: Me 
    section Ready for Production
      Deploy in SAP BTP, Cloud Foundry Runtime: 5: Me
      Assign the User Roles: 5: Me
    section Integration to Workzone
      Integrate Your Application with SAP Build Work Zone, Standard Edition: 5: Me, CAP Champion
      Integration to SAP Mobile Start(Optional): 5: Me, CAP Champion
```
