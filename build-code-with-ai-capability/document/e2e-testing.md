## Test the Incident Management Application

## Prerequisite

[Extend the Incident Management Application](./extend-service.md)



## Testing end to end.

1. Open the terminal, and start the application by following the below command:

```sh
cds watch --profile hybrid
```

2. Go to the terminal where the application is running, click on the url where the localhost is running

    ![terminal](../images/extend-service/localhost.png)

> [!Tip]
> Open the URL in the browser, by following
>
> For windows, Ctrl + click on the URL
>
> For Mac, command + click on the URL

3. Once you open the application, click on the URL under **Web Applications**.

    ![webapp](../images/teste2e/open-webapp.png)

4. Click on **Go**, which loads all the incidents.

    ![testing](../images/teste2e/go.png)

5. Click on **Create**.

    ![testing](../images/teste2e/create.png)

6. Fill in the incident details:

    1. In the **Title** field, enter **Printer is not working**.
    
    2. In the **Customer** dropdown menu, select a customer of your choice.

        ![testing](../images/teste2e/valuehelp.png)

    3. Leave the **Status** and **Urgency** fields with its default value.

    4. Under **Conversation**, click on **Create**.

    5. Enter the Message as **Paper is not printing**.

    6. Click on **Create**.

        ![testing](../images/teste2e/createinobject.png)

7. Under **Recommended Solutions**, you will be able to see the solutions with the confidence score.

    ![testing](../images/teste2e/recommend.png)

8. Click on **Detailed Solution** to get the detailed explanation.

    ![testing](../images/teste2e/accept1.png)

## Congratulations! 

You have successfully completed the exercise!