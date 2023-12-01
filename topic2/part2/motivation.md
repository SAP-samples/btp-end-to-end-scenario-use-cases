# Motivation

The deployed application works fine now. But there are still some issues like access with basic authentication, not optimal data reading (getting status for every project in a separate request), lack of OData V4 features for the Project API and so on. 

  ![before](img/0005-diagram-before.png)

This can be fixed by creating an own service via SAP S/4HANA Cloud Developer Extensibility.

  ![after](img/0006-diagram-after.png)

As always the creating of the own service has its pros and cons:

### Pros:
- Tailored API: cleaner and easier to understand/mock
- Better performance (no additional fields, data, views, etc.)
- Lower network overhead (no additional requests)
- Custom business logic is available
- Custom authentication control (OAuth)
- Custom authorization control
- OData V4 if necessary

### Cons:
- ABAP Developer skills are needed
- Lifecycle responsibility

[Next tutorial: Explore Business Object Projection](./bo-projection.md)

## Further reading / Reference Links

- [SAP ABAP RESTful Application Programming Model](https://help.sap.com/docs/ABAP_PLATFORM_NEW/fc4c71aa50014fd1b43721701471913d/289477a81eec4d4e84c0302fb6835035.html)
