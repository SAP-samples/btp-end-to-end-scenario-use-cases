## Test the Incident Management Application

## Prerequisite

[Extend the Incident Management Application](./extend-service.md)

## Feed the data 

1. Open the terminal, and start the application by following the below command:

```sh
cds watch --profile hybrid
```

2. Open the `request.http` file and click on **Send Request**.

image

> In the terminal, you can see the data from Incidents.csv file is getting trained.
> Once done, you will see the Response as 200. 

image

3. Go back to the terminal where the application is running, click on the url where the localhost is running

image

> Note: To open the URL in the browser
> For windows, Ctrl + click on the URL
> For Mac, command + click on the URL

1. Choose **Create**, to create a new incident.

    ![testing](../images/e2e-testing/incident_create.png)

    