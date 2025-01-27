# Adjust the Process Automation Project

## Introduction

In this exercise we will adjust the project in the following way:

- when the event is triggered the Purchase Order data should be read with the ID from the event payload.
- in the purchase order data we read the creator user name.
- if the PO user belongs to the workshop participant - then proceed. Otherwise cancel the process. With that, we garantee that all the workshop participants are only responsible for their own processes.
- the process triggers then a form where additional information can be added. This recepient of the form is hardcoded. It is the workshop participant.
- After the form is filled, the purchase order will be updated. The data from the form is sent to the PO's custom field.

## Tutorial

### Get SAP S/4HANA Cloud User Name

1. Login to the S/4HANA Cloud cockpit and choose icon with your initials in the top right corner. Then choose **Settings** in the popup menu.

    ![](./img/s4hc-settings-menu.png)

2. Copy your User ID. You will need it later.

    ![](./img/s4hc-user-name.png)

### Adjust Process Automation Project

1. Open your SAP BTP Subaccount. Go to **Services** > **Instances and Subscriptions**. Select three-dots-button in the **SAP Build Process Automation** line. Then choose **Go To Application** in the popup menu.

    ![](./img/open-process-automation.png)

2. In the lobby select **My projects** filter and then select your project.

    ![](./img/open-project.png)

3. Choose the only process artifact.

    ![](./img/open-process-artifact.png)

4. Choose the button with a plus sign between 2 nodes of the process.

    ![](./img/add-get-action.png)
  
5. Choose **Action**.

    ![](./img/add-get-action2.png)

6. Choose **Browse All Actions**.

    ![](./img/browse-all-actions.png)

7. In the search field, enter your unique ID (like AB123) and press Enter. Then choose **Add** for the **GET** action.

    ![](./img/action-browser-add-get.png)

8. In the right pane choose **Destination variable** dropdown list and then choose **Create Destination Variable**.

    ![](./img/create-destination-variable.png)

9. Enter **destination** in the **Identifier** field. Enter some description in the **Description** field. Then choose **Create**.

    ![](./img/create-destination-variable-data.png)

10. Having the new element selected, choose the **Inputs** tab in the right pane. Then select the **PurchaseOrder** field. You will get another pane. Select **PurchaseOrder** field under **Process Inputs** > **data** there.

    ![](./img/get-po-data-input.png)

11. Now you see that **PurchaseOrder** field has an assignment from the incoming event. This is necessary to read the specific Purchase Order data. Unfortunately the S/4HANA Cloud event payload has only the Purchase Order ID in it (to decrease the payload size). All additional information we need to read via APIs. You can close the right pane now.

    ![](./img/close-get-po-data-tab.png)

12. Now let's add another node. Choose the button with a plus sign between **HTTP** and **End** nodes.

    ![](./img/add-condition.png)

13. Choose **Control and Events**.

    ![](./img/add-condition2.png)

14. Choose **Condition**.

    ![](./img/add-condition3.png)

15. In the right pane, choose **Open Condition Editor**.

    ![](./img/open-condition-editor.png)

16. Choose the first field with **Select item** placeholder. Find **Get entity from PurchaseOrder by key** group and expand it. Expand the **result** node. Then choose **CreatedByUser** field.

    ![](./img/condition-field-search.png)

17. In the last field with **Select value** placeholder, enter your User ID (it begins with **CB**) that you noted in the beginning of this exercise. Then choose **Apply**.

    ![](./img/condition-user-name.png)

18. Choose the plus button in the **If** branch of the condition.

    ![](./img/add-form.png)

19. Choose **Form**.

    ![](./img/add-form2.png)

20. Choose **Blank Form**.

    ![](./img/blank-form.png)

21. Enter **additional info form** in the **Name** field and then choose **Create**.

    ![](./img/form-data.png)

22. On the right pane, enter **Purchase Order** in the **Subject** field. Additionally choose **PurchaseOrder** on the **Process Content** pane. This is necessary to see a nice workitem subject in `MyInbox` app later, like `Purchase Order 123456789`.

    ![](./img/form-subject.png)

23. In the same pane under **Recipients**, enter your email address (the one you use to log on to SAP BTP) in the **Users** field.

    ![](./img/form-recepient.png)

24. In the same pane, choose the three dots button and then choose **Open Editor** in the popup menu.

    ![](./img/form-open-editor.png)

25. Drag and drop text field to your new form and enter **Additional information** instead of **New Text** caption.

    ![](./img/drag-and-drop-text-field.png)

26. Select the field and choose **Required** in the right pane. **Save** your project and close the form editor.

    ![](./img/form-interface.png)

27. Add another node to the **If** branch of the condition with the plus button.

    ![](./img/add-patch-action.png)

28. Choose **Action**.

    ![](./img/add-patch-action2.png)

29. Choose **Update entity in PurchaseOrder**.

    ![](./img/select-update-action.png)

30. On the right pane choose **Destination Variable** dropdown list and then choose **destination**.

    ![](./img/select-destination-variable.png)

31. Go to **Inputs** tab and then choose **PurchaseOrder** field. Select **PurchaseOrder** in the **Process Content** pane under the **Process Inputs** group.

    ![](./img/update-po-key.png)

32. Choose **YY1_SCHECK_PDH** field. Select **Additional information** under the **additional info form** group on the **Process Content** pane. Then choose **Save**.

    ![](./img/update-po-custom-field.png)

33. Now the process is ready. Choose **Release** button.

    ![](./img/release-process.png)

34. Choose **Release** button in the new window.

    ![](./img/release-process2.png)

35. After release is done make sure that you are in **Released** version (choose it if necessary in the dropdown list at the top of the screen). Then choose **Deploy**.

    ![](./img/deploy-project.png)

36. Choose **Public** environment and then choose **Deploy**.

    ![](./img/deploy-project2.png)

37. Confirm popup with the **Deploy** button.

    ![](./img/confirm-deploy.png)

38. Select **S4HC_BASIC_PO** in the **Destination** field. Then choose **Deploy**.

    ![](./img/deploy-select-destination.png)

39. After the deployment is done you will see the status label **Deployed**. You may close the browser window now.

    ![](./img/deploy-result.png)

## Next Step

[Workzone Setup](./workzone.md)
