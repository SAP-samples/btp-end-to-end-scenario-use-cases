# Eventing Setup

## Overview

1. Create an SAP S/4HANA Cloud Extensibility Service Instance in the Cloud Foundry Environment as described [here](https://help.sap.com/docs/btp/sap-business-technology-platform/create-sap-s-4hana-extensibility-service-instance-in-cloud-foundry-environment?version=Cloud).

2. Configure Event Topics as described [here](https://help.sap.com/docs/btp/sap-business-technology-platform/configure-event-topics-in-sap-s-4hana-cloud?version=Cloud).

3. Create an Event Mesh service instance as described [here](https://help.sap.com/docs/event-mesh/event-mesh/create-event-mesh-service-instance?version=Cloud). 

4. Subscribe to the Event Mesh app as described [here](https://help.sap.com/docs/event-mesh/event-mesh/subscribe-to-event-mesh-business-application?version=Cloud).

5. Assign an **Enterprise Messaging Administrator** role collection to your user. 

6. Create queue subscriptions as described [here](https://help.sap.com/docs/event-mesh/event-mesh/manage-queues?version=Cloud). 

> We are subscribing to the events from the message client **XXXX** (the name of the channel in S/4HANA Cloud) hence the namespace has the **XXXX** namespace plus **ce** plus the namespace of the subscribed topic.

7. Create a webhook as described [here](https://help.sap.com/docs/event-mesh/event-mesh/manage-webhooks?version=Cloud). 

  * Use the Webhook URL by using the URL from the instance of the SAP Build Process Automation service key `api` endpoints and adding `internal/be/v1/events`. As a result, your webhook URL should look something like the following URL:  https://spa-api-gateway-XXXXXXX.sap.hana.ondemand.com/internal/be/v1/events. 
  * Insert the Client ID, the Client Secret, and the Token URL by adding `oauth/token`. You can copy and paste these credentials from the service key.

## Next Step

[SAP Build Workzone Setup](./workzone.md)