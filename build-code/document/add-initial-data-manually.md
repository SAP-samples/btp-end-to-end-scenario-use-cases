# Add Initial Data to Your Database

Since we already have an SQLite in-memory database that was automatically created earlier, let's now fill it with some initial data. 
In a production version, you would only fill in data that is unlikely to change. In our case, we also load customers and incidents so that we have some test data as soon as the application is launched. 

When application is up and running, you have the option to use the OData REST interface to insert, update or delete the data.

### Generate `.csv` Templates

1. Run the following command in the root folder of your project which is incidents-management  :

```bash
cds add data
```

2. Check the output.

```bash
Adding feature 'data'...

Creating db/data/sap.capire.incidents-Incidents.csv
Creating db/data/sap.capire.incidents-Customers.csv
Creating db/data/sap.capire.incidents-Status.csv
Creating db/data/sap.capire.incidents-Urgency.csv
Creating db/data/sap.capire.incidents-Incidents.conversation.csv
Creating db/data/sap.capire.incidents-Status.texts.csv
Creating db/data/sap.capire.incidents-Urgency.texts.csv

Successfully added features to your project.
```

### Fill In Initial Data

Replace the generated `.csv` templates with the following content: 

- db/data/sap.capire.incidents-Customers.csv:

  ```csv
  ID,firstName,lastName,email,phone
  1004155,Daniel,Watts,daniel.watts@demo.com,+44-555-123
  1004161,Stormy,Weathers,stormy.weathers@demo.com,
  1004100,Sunny,Sunshine,sunny.sunshine@demo.com,+01-555-789
  ```

- db/data/sap.capire.incidents-Incidents.csv:

  ```csv
  ID,customer_ID,title,urgency_code,status_code
  3b23bb4b-4ac7-4a24-ac02-aa10cabd842c,1004155,Inverter not functional,H,C
  3a4ede72-244a-4f5f-8efa-b17e032d01ee,1004161,No current on a sunny day,H,N
  3ccf474c-3881-44b7-99fb-59a2a4668418,1004161,Strange noise when switching off Inverter,M,N
  3583f982-d7df-4aad-ab26-301d4a157cd7,1004100,Solar panel broken,H,I
  ```

- db/data/sap.capire.incidents-Addresses.csv

  ```csv
  ID,customer_ID,city,postCode,streetAddress
  17e00347-dc7e-4ca9-9c5d-06ccef69f064,1004155,Rome,00164,Piazza Adriana
  d8e797d9-6507-4aaa-b43f-5d2301df5135,1004161,Munich,80809,Olympia Park
  ff13d2fa-e00f-4ee5-951c-3303f490777b,1004100,Walldorf,69190,Dietmar-Hopp-Allee
  ```

- db/data/sap.capire.incidents-Incidents.conversation.csv:

  ```csv
  ID,up__ID,timestamp,author,message
  2b23bb4b-4ac7-4a24-ac02-aa10cabd842c,3b23bb4b-4ac7-4a24-ac02-aa10cabd842c,1995-12-17T03:24:00Z,Harry John,Can you please check if battery connections are fine?
  2b23bb4b-4ac7-4a24-ac02-aa10cabd843c,3a4ede72-244a-4f5f-8efa-b17e032d01ee,1995-12-18T04:24:00Z,Emily Elizabeth,Can you please check if there are any loose connections?
  9583f982-d7df-4aad-ab26-301d4a157cd7,3583f982-d7df-4aad-ab26-301d4a157cd7,2022-09-04T12:00:00Z,Sunny Sunshine,Please check why the solar panel is broken
  9583f982-d7df-4aad-ab26-301d4a158cd7,3ccf474c-3881-44b7-99fb-59a2a4668418,2022-09-04T13:00:00Z,Bradley Flowers,What exactly is wrong?
  ```

- db/data/sap.capire.incidents-Status.csv:

  ```csv
  code;descr;criticality
  N;New;3
  A;Assigned;2
  I;In Process;2
  H;On Hold;3
  R;Resolved;2
  C;Closed;4
  ```
- db/data/sap.capire.incidents-Urgency.csv:

  ```csv
  code;descr
  H;High
  M;Medium
  L;Low
  ``` 

> [!Tip]
> Notice that `cds add data` created seven files, while we're adding data to just five of them. We're leaving the `xxxxx.texts.csv` files empty because they hold translated text once the app is localized and translations are created.
