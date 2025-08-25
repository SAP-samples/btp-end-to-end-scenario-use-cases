## Validate the custom logic scenario:

Update the **Urgency** from *Low/Medium* to *High*, if it encounters ```urgent``` keyword in the title.

1. Click on Create, for creating a new incident.

    ![testing](../images/e2e-testing/incident_create.png)

2. For creating the incident, do the following:

    - Select any one of the customer by clicking on the value help.

        ![testing](../images/e2e-testing/customer_value_help.png)

    - Give title as `Urgent issue`

    - Leave the urgency_code and status_code by default.

    - Click on **Create**.

        ![testing](../images/e2e-testing/create_draft.png)

3. Once the incident is created, you will observe the **urgency_code** is automatically changed to H which means High from M - Medium.

    ![testing](../images/e2e-testing/updated_high.png)

# **Congratulations ! You have successfully completed the exercise.**
