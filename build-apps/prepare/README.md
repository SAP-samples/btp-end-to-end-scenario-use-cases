# Prerequisites and Required Systems

This section contains the prerequisites that you have to fulfill before you get started. Make sure that the prerequisites are fulfilled and all required systems are in place.

## Systems and Accounts

* [SAP S/4HANA Cloud](https://www.sap.com/products/erp/s4hana.html) system or [SAP S/4HANA on-premise](https://community.sap.com/topics/s4hana)
* [Global account](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/8ed4a705efa0431b910056c0acdbf377.html?locale=en-US#loioc165d95ee700407eb181770901caec94) in SAP BTP
* Subaccount in SAP BTP with Cloud Foundry environment enabled. Please check in the [SAP Build Apps - Pricing section](https://discovery-center.cloud.sap/serviceCatalog/sap-appgyver) in which SAP BTP regions SAP Build Apps is available.
* [Optional] If you don't have a Global account in SAP BTP you can run this mission on the SAP BTP Trial account.
* [Optional] If you don't have an SAP S/4HANA Cloud system you can run this mission by installing a mock server. For the mock server, you would need 256MB of Cloud Foundry runtime.


## SAP BTP Provider Account

* Enable SAP BTP Cloud Foundry [global account](https://developers.sap.com/tutorials/cp-cf-entitlements-add.html).
* SAP BTP [subaccount](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/8ed4a705efa0431b910056c0acdbf377.html?locale=en-US#loio8d6e3a0fa4ab43e4a421d3ed08128afa)
* SAP BTP space

### Entitlements

The application requires the following [Entitlements and Quotas](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/00aa2c23479d42568b18882b1ca90d79.html?locale=en-US) in the SAP BTP cockpit:

| Service                           | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
| SAP Build Apps                      | standard   |          1          |
|  SAP Build Work Zone, standard edition | free or standard |    1          |
| Cloud Foundry runtime (optional)  | MEMORY     |          1          |
| Destination service               | lite       |          1          |


