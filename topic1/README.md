# Topic 1 : Extending the Goods Receipt Process

## Use Case Description

SupplierHub Corporation produces different types of complex industry and consumer goods. For the production they purchase intermediate products from multiple suppliers. For legal and economic reasons, incoming goods must be checked for quantity, quality and integrity at the delivery time in the warehouse. The company wants to comply with this legal requirement and do a proper check of the goods according to the product type. 

The standard SAP S/4HANA system does not provide this functionality. So far, a lot of paperwork is necessary, and it is preferable to digitalize the process. Due to the warehouse environment the usage of a tablet or mobile device would be the best fit for the delivery checks. 

Therefore, the warehouse management wants to build a custom UI for this use case. The costs and time for development and maintenance of the solution should be as low as possible. A no-code, low-code as SAP Build Apps and using the Key User Extensions of the SAP S/4HANA system is the preferred way to go. The idea is to standardize the material checks for inbound deliveries and to document errors and damages of the delivery. If so, a document showing defects with the error description and linked to the purchase order should be created in SAP S/4HANA. With this the quality manager can proceed to handle the complaints with the supplier.

## Prerequisites

You have got the activation email from our SAP Cloud Identity Services and activated your profile with the provided link.

## Exercises

Part 1:

1. [Custom BO Check Results](./s4hc/grcheck_bo.md) 
2. [Custom BO Check List](./s4hc/checklist_bo.md)
3. [Custom Communication Scenario](./s4hc/communication_scenario.md)
4. [Communication System and Communication Arrangement](./s4hc/communication_arrangement.md)

Part 2:

5. [Set up Destinations](./s4hc/destination.md)
6. [Create Purchase Order with sample Product](./s4hc/purchase_order.md)
7. [Create a Frontend Application with SAP Build Apps](./build-apps/sap_build_apps.md)
