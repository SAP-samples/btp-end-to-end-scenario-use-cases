# Bill of Materials

## Entitlements

The list shows the entitlements that are required in the different subaccounts to develop and run the workshop application. You can get more information about the used services in the [SAP Discovery Center](https://discovery-center.cloud.sap/protected/index.html#/viewServices). 

| Subaccount    |  Entitlement Name                                    | Service Plan              | Type          | Quantity                          | 
| -----------   |  -------------------                                 | ---------                 | ---------     | ---------                         |
| Development   |                                                      |                           |               |                                   |
|               | SAP Business Application Studio                      | standard-edition          | Application   | 1 (per developer)                 |
|               |                                                      |                           |               |                                   |
|               | SAP BTP Cloud Foundry runtime                        | standard                  | Environment   | 4 units                           |
|               | SAP Authorization and Trust Management service       | broker                    | Service       | 1                                 | 
|               | SAP Destination service                              | lite                      | Service       | 1                                 | 
|               | SAP HTML5 Application Repository service for SAP BTP | app-host                  | Service       | 1                                 | 
|               | SAP HTML5 Application Repository service for SAP BTP | app-runtime               | Service       | 1                                 | 
|               | SAP HANA Cloud                                       | hana-td                   | Service       | 1                                 | 
|               | SAP HANA Cloud                                       | tools                     | Application   | 1                                 | 
|               | SAP HANA Schemas & HDI Containers                    | hdi-shared                | Service       | 1                                 | 

## Modules

### Running in Cloud Foundry
The application consists of the following modules which are deployed into the SAP BTP Cloud Foundry runtime of the provider subaccount. 

Provided by SAP:
- Application Router                                                           

Your main development task:                                            
- Partner Application Module  

### Node Modules
Some open-source node modules offered by SAP are used to build the solution. 

Provided by SAP:
- SAP Cloud Application Programming Model on Node.js 
- SAPUI5 with SAP Fiori elements 
- SAP Cloud SDK 

## Applications
SAP offers several applications to build the solution. These applications need to be downloaded and installed on the local machine.

Provided by SAP:
- ABAP Development Tools

## Information on Versions and What's New

The SAP Help page ["What's New for SAP Business Technology Platform"](https://help.sap.com/whats-new/cf0cb2cb149647329b5d02aa96303f56?clear=all&locale=en-US) allows you to subscribe for updates. 