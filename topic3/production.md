# Prepare for Production

## 1. Add SAP HANA Cloud

1. From the root of the **INCIDENT-MANAGEMENT** project, choose the burger menu <img src="Images/hor.png" width="20" />, and then choose **Terminal → New Terminal**.
2. To add an SAP HANA Cloud client to your application, run the following command:

```
cds add hana --for production
```

> [!NOTE] 
> The cds add hana command adds the @sap/cds-hana module that allows SAP HANA Cloud to access the package.json file and the database configuration “db”: “hana” > 
that uses SAP HANA Cloud when the application is started on production. The cds add hana command adds to the package.json file the highlighted lines.

```json
{
    "name": "incident-management",
    "dependencies": {
        ...
        "@sap/cds-hana": "^x"
    },
    ...
    "cds": {
        "requires": {
            ...
            "[production]": {
                "db": "hana"
            }
        }
    }
}
```
## 2. Configure the SAP Authorization and Trust Management service

1. Run the following command in the terminal:

```
cds add xsuaa --for production
```

> [!NOTE] 
> Running cds add xsuaa does two things:
Adds the SAP Authorization and Trust Management service service to the package.json file of the INCIDENT-MANAGEMENT project.
Creates the SAP Authorization and Trust Management service security configuration (that is, the xs-security.json file) for the INCIDENT-MANAGEMENT project.

2. Make sure that the following lines have been added to the **package.json** file:

```json
{
  "name": "incident-management",
  "dependencies": {
      ...
      "@sap/xssec": "^x"
  },
  ...
  "cds": {
    "requires": {
      ...
      "[production]": {
        "db": "hana",
        "auth": "xsuaa"
      }
    }
  }
}

```




