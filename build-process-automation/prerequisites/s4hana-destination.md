## Create Destination for CAP Application

1. Go to the [SAP BTP Cockpit](https://emea.cockpit.btp.cloud.sap/cockpit#/globalaccount/a9030b2a-ed51-438e-9166-241ce6c0291d/subaccount/643ae448-ea81-4fea-8d95-fb010e4d9f50/subaccountoverview).

2. Click on **Destinations** under **Connectivity** from the left side menu.

3. Click on **Create Destination**.

    ![destination](./images/destination-cap/create_destination.png)

4. For the Destination creation, do the following:

    1. Enter the name as **S4HANA**.

    2. Leave the **Type** as **HTTP** by default.

    3. URL becomes **s4hana-system-url/sap/opu/odata/sap/API_BUSINESS_PARTNER**

        > Note: *s4hana-system-url* is the S/4HANA Cloud System.

    4. Leave the **Proxy Type** as **Internet** by default.

    5. Change the Authentication to **Basic Authentication** from the dropdown.

    6. Retrieve the User and Password from [here](./s4hanasystem.md) 

    7. Under Additional Properties, click on **New Property**.

    8. Give the property name as **sap.applicationdevelopment.actions.enabled** and its value as **true**.

    9. Click on the **New Property** again.

    10. Give the property name as **sap.processautomation.enabled** and its value as **true**.

    11. Click on **Save**.

        ![destination](./images/destination-s4hana/s4hana_destination.png)

## Check the connection

1. Click on the created Destination.

2. Click on **Check Connection**.

    ![destination](./images/destination-s4hana/check_connection.png)

3. You will get a pop up with Connection to "S4HANA" established.

    ![destination](./images/destination-s4hana/connection_established.png)
