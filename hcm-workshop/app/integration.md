# Adding Integration

## Introduction

In this exercise, you will add integration with the external APIs:

1. Success Factors Benefits OData API
2. Custom Catering Service OData and REST API

## Content

1. Choose **Integrations** tab.

    ![](img/b01.png) 

2. Choose **Add Integration** button.

    ![](img/b02.png) 

3. Choose **BTP Destinations**.

    ![](img/b03.png) 

4. Choose the destination with your Success Factors API which you've created earlier, e.g. **BusinessHub**.

    ![](img/b04.png) 

5. Choose **Install Integration**.

    ![](img/b05.png) 

6. Find **Benefit** entity (you can use a search field for it). Then choose **Enable Data Entity**.

    ![](img/b06.png) 

7. Make sure that the **Benefit** entity is now enabled. Then choose **Exit**.

    ![](img/b07.png) 

8. Repear steps from 1 to 3. But then choose your custom catering API destination, e.g. **CateringAPI**.

    ![](img/b08.png) 

9. Choose **Install Integration**.

    ![](img/b09.png) 

10. Choose **Menu** entity and then choose **Enable Data Entity**.

    ![](img/b10.png) 
    
11. Make sure that the **Menu** entity is now enabled. Then choose **Exit**.

    ![](img/b11.png) 

12. Now it's time to add REST API. This is a bit more complicated as such APIs don't contain any metadata information and **SAP Build Apps** cannot recognize their interface automatically. 

    Choose **Create Data Entity** and then choose **SAP BTP Destination REST API integration**.

    ![](img/b12.png) 

13. In the new window enter **getVoucher** to the **Data entity name** field. Afterwards, select **CateringAPI** in the **BTP destination name** dropdown list. Then choose **retrieve** checkbox in the list of the API methods.

    ![](img/b13.png) 

14. Scroll down till **Additional Inputs** section. Choose **Add New**.

    ![](img/b14.png) 

15. Enter **menuItem** in the **Field key** field. Choose **text** type in the **Field type** section. And then choose **Add**.

    ![](img/b15.png) 

16. In the same way add another text field with the name **email**.

    ![](img/b16.png) 

17. After this two input fields are created, choose **retrieve**.

    ![](img/b17.png) 

18. Choose **X** button in the **Relative path and query** section.

    ![](img/b18.png) 

19. Choose **Static text**.

    ![](img/b19.png) 

20. Enter `/Voucher/getVoucher` to the **Relative path and query** field. Choose **POST** as the **Request method**. And then choose **X** button in the **Request body mapper** section.

    ![](img/b20.png) 

21. Choose **Formula**.

    ![](img/b21.png) 

22. Choose **Create formula**.

    ![](img/b22.png) 

23. Paste the following formula to the formula field and then choose **Save**:

    ~~~js
    { menuItem: query.additionalInputs.menuItem, email: query.additionalInputs.email }
    ~~~

    ![](img/b23.png) 

    It will map the input fields you've created with the requested payload of the `getVoucher` API.

24. Choose **Test** tab.

    ![](img/b24.png) 

25. Fill both input fields (**menuItem** and **email**) with some data (e.g. **TEST**) and then choose **Run Test**. You should get a voucher code in the response. Choose **Autodetect Schema From Response** to add response metadata information for this API. Then choose **Save Data Entity**.

    ![](img/b25.png) 

26. Now you have your external systems integrated.

    ![](img/b26.png)

## Next Step

[Creating a page with the employee benefits](./page-benefits.md)