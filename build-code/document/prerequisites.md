# Prerequisites

 You should have 
 * SAP BTP Global Account
 * SAP S/4HANA Public Cloud system 

# Entitlements required on SAP BTP

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
| SAP S/4HANA Cloud Extensibility | api-access | 1 |


See [Entitlements and Quotas](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/00aa2c23479d42568b18882b1ca90d79.html?locale=en-US).

* While adding entitlement **SAP S/4HANA Cloud Extensibility**, please select the appropriate system under **Service Details: SAP S/4HANA Cloud Extensibility** dropdown.
* In the checkbox, check the **api-access** under Available Plans and add the service plans.

# Setup SAP Build Code

1. Next step is to [Setup SAP Build Code in SAP BTP](../../workshops/clean-core-extensibility-cap/setup/setup-build-code.md)
