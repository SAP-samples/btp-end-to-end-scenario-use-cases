# Prepare the Project for Production

## Usage Scenario

To use the SAP S/4HANA Cloud Extensibility service to access the Business Partner API, you need some additional configurations. 

## Content

Navigate to the *package.json* file in the root folder of the application. Replace the settings for **API_BUSINESS_PARTNER** with the following code snippet:

    ```json
    "API_BUSINESS_PARTNER": {
        "kind": "odata-v2",
        "model": "srv/external/API_BUSINESS_PARTNER",
        "[production]": {
            "credentials": {
                "destination": "incidents-api-access",
                "path": "/sap/opu/odata/sap/API_BUSINESS_PARTNER"
            }
        }
    }
    ```