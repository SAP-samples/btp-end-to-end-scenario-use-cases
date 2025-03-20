## Prerequisites

1. [Setup SAP Build Code in SAP BTP](./setup-build-code.md)

> [!Note]
> For this handson we have already set up SAP Build Code.

2. You will need to create space in SAP BTP Cockpit, which is required for deploying the developed application to Cloud Foundry Runtime. Follow [Create Space in SAP BTP](./create-space.md).

## Entitlements required

| Service / Subscription                          | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
| SAP Build Code | standard | 1 |
| SAP Build Work Zone, standard edition | standard | 1 |
| SAP HANA Cloud | tools | 1 |
| SAP HANA Cloud | hana | 1 |
| Connectivity Service| lite | 1 |
| SAP HANA Schemas & HDI Containers | hdi-shared | 1 |
| Destination Service | lite | 1 |
| HTML5 Application Repository Service | app-host | 1 |
| Application Logging Service | lite | 1 |
| Authorization and Trust Management Service | application | 1 |
| Cloud Foundry Runtime | Runtime | 2 GB |


## Next Step

[Create a Full Stack Application](./create-full-stack-project.md)