## Test the Incident Management Application

## Prerequisite

[Extend the Incident Management Application](./extend-service.md)

## Feed the data 

1. Open the terminal, and start the application by following the below command:

```sh
cds watch --profile hybrid
```

2. Open the `request.http` file and click on **Send Request**.

    ![request](../images/extend-service/send-req.png)

> In the terminal, you can see the data from Incidents.csv file is getting trained, please wait for sometime. you will see the Response as 200. 

3. Once completed, you will see the Response as 200.

    ![response](../images/extend-service/success-http.png)

4. Go back to the terminal where the application is running, click on the url where the localhost is running

    ![terminal](../images/extend-service/localhost.png)

> [!Tip]
> Open the URL in the browser, by following
>
> For windows, Ctrl + click on the URL
>
> For Mac, command + click on the URL

## Testing end to end.

1. Once you open the application, click on the URL under **Web Applications**.

    ![webapp](../images/teste2e/open-webapp.png)

2. Click on **Go**, which loads all the incidents.

    ![testing](../images/teste2e/go.png)

3. Click on **Create**.

    ![testing](../images/teste2e/create.png)

4. Fill in the incident details:

    1. In the **Title** field, enter **Printer is not working**.
    
    2. In the **Customer** dropdown menu, select a customer of your choice.

        ![testing](../images/teste2e/valuehelp.png)

    3. Leave the **Status** and **Urgency** fields with its default value.

    4. Under **Conversation**, click on **Create**.

    5. Enter the Message as **Paper is not printing**.

    6. Click on **Create**.

        ![testing](../images/teste2e/createinobject.png)

5. Under **Recommended Solutions**, you will be able to see the solutions with the confidence score.

    ![testing](../images/teste2e/recommend.png)

6. Click on **Accept Solution**.

    ![testing](../images/teste2e/accept1.png)

7. In the dropdown, click on **Yes**, if the recommended solution worked. And click on **Accept Solution** again.

    ![testing](../images/teste2e/accept2.png)

8. You will get a notification as **Data added successfully!**

    ![testing](../images/teste2e/data-saved.png)

## Go back to the [Home Page](../../build-code-with-ai-capability/README.md#optional-exercise-3-deploy-in-sap-btp-cloud-foundry-runtime) to deploy to the Cloud Foundry Runtime.