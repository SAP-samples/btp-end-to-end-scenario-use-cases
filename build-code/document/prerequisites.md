# Prerequisites

 You should have an enterprise SAP BTP global account. 

# Entitlements required

| Service / Subscription                          | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
| SAP Build Code | standard | 1 |
| SAP Business Application Studio | build-code | 1 |
| SAP Build Work Zone, standard edition | standard | 1 |
| SAP HANA Cloud | tools | 1 |
| SAP HANA Cloud | hana | 1 |
| Connectivity Service| lite | 1 |
| SAP HANA Schemas & HDI Containers | hdi-shared | 1 |
| Destination Service | lite | 1 |
| HTML5 Application Repository Service | app-host | 1 |
| Application Logging Service | lite | 1 |
| Authorization and Trust Management Service | application | 1 |
| Cloud Foundry Runtime | Runtime | 1 GB |


# Setup SAP Build Code

1. Next step is to [Setup SAP Build Code in SAP BTP](../../workshops/clean-core-extensibility-cap/setup/setup-build-code.md)

2. You will need to create Cloud Foundry space in SAP BTP Cockpit, which is required for deploying the developed application to Cloud Foundry Runtime. Follow [Create Space in SAP BTP](./create-space.md).

