# Add Dependencies of SAP AI SDK

## Prerequisites

You have created the basic fiori UI using [Add Fiori UI](fiori-ui.md).

## Add dependencies

1. Open Package.json and add the below dependencies

```json
    "dependencies": {
        ...
        "@sap-ai-sdk/foundation-models": "^1.9.0",
        "@sap-ai-sdk/langchain": "^1.9.0",
        "@sap-ai-sdk/orchestration": "^1.9.0",
        "@sap-cloud-sdk/connectivity": "^4.0.1",
        "@sap-cloud-sdk/http-client": "^3.26.3",
        "@sap-cloud-sdk/resilience": "^3.26.0",
        "cap-llm-plugin": "^1.4.5",
        "langchain": "^0.3.19"
    },
```

> [!Note]
> These packages are needed for

2. Under cds.requires add the below destinations

```json
"cds": {
    "requires": {
      ...
      "gen-ai-hub": {
        "gpt-4": {
          "destinationName": "GenAIHubDestination",
          "deploymentUrl": "/inference/deployments/dadf7ff178508bbc",
          "resourceGroup": "amit",
          "apiVersion": "2024-02-15-preview",
          "modelName": "gpt-4"
        },
        "text-embedding-ada-002": {
          "destinationName": "GenAIHubDestination",
          "deploymentUrl": "/inference/deployments/df8300f3d1b78d64",
          "resourceGroup": "amit",
          "apiVersion": "2024-02-15-preview",
          "modelName": "text-embedding-ada-002"
        }
      },
      "GenAIHubDestination": {
        "kind": "rest",
        "credentials": {
          "destination": "aicore-destination",
          "requestTimeout": "300000"
        }
      },
    }
}
```

## Next Step

[Add Services](add-service-ai-core.md)
