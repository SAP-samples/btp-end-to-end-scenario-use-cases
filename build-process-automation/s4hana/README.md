## Consume SAP S/4HANA Business Partner API to the Drop-Down Fields in the Form.

## Prerequisite

[Create Business Partner Action Project in SAP Build Actions](https://developers.sap.com/tutorials/spa-business-partner-action-create.html)

> [!NOTE]  
> Actions has already been created for this session.

## Create a dropdown in order processing form

1. Select the **Purchase Form** which you have created in last project.
2. Drag and drop a **Dropdown** field in the form and enter the name as **Customer Name**.
3. Choose **Save**.

![](../s4hana/images/form.png)


## Add action project to dropdown.

1. Select the **Customer Name** dropdown.
2. As **Data to display**, choose **Data Source**.
3. Select the **value-help** option for **Data Source** field.

![](../s4hana/images/chosesource.png)

4. In the **Browse Library** pop-up, choose **GET** as **Action Type**.
5. Select the **Add** option for the action project you created earlier.

![](../s4hana/images/chooseaction.png)

6. Create Destination Variable.

![](../s4hana/images/createdest.png)

> [!IMPORTANT]  
> In this exercise, we are giving the name of variable as **bupa**

![](../s4hana/images/createbupa.png)

7. Once detination is created, from the dropdown, choose **bupa**.

![](../s4hana/images/bupa.png)

8. Choose the **Customer Name** option from the dropdown.

![](../s4hana/images/custname.png)

> [!NOTE]  
> The customer name in the dropdown are coming from the metadata of SAP S/4HANA api.

9. **Save** the form.
10. **Release** the project.
11. **Deploy** the project.

![](../s4hana/images/dest.png)

> [!CAUTION]
> Please make sure that you have chosen the correct destination for deployment. Please see the above screenshot for more clarification.

## Next Step

[Test the dropdown filtering in the form](../s4hane2e/README.md)




