## Create a Business Partner Details Page

After you have created the entry page of your application, you will now create a page to show the details of the selected business partner.

### Create a New Page

You will add a new page to your application and add page parameters so you can access data from your application.

1. Open the drop down menu in the top left corner where your current **Home** page name appears.

2. Choose **+ ADD NEW PAGE**.

   ![image](https://github.com/user-attachments/assets/a15a2c7d-7b29-437b-98e9-d95bf7c7f6c7)

3. Enter **Details** as **Page name**, and then Select **OK**. Your new page will be created and open.

4. On the Details page, choose the **<> VARIABLES** tab.

5. Choose the **PAGE PARAMETERS** button on the left side of the screen.

6. Choose **ADD PARAMETER**.
   ![image](https://github.com/user-attachments/assets/b4eb7385-1971-4538-893a-eb9635fd8786)

8. It creates a new parameter, choose the created parameter to edit.

9. On the right side of the screen, change the **Parameter name** to **businessPartnerId**.

10. Again, choose  **ADD PARAMETER** and create a second parameter.

11. Change **Parameter name** to **businesspartnerName**.

12. Choose **SAVE**.

    ![image](https://github.com/user-attachments/assets/04b16c74-778c-4b90-92c6-3a83a2c8d1b7)

13. Switch back to **User Interface** tab.

### Enable Navigation from Home Page to Details Page

To show the business partner details on the details page, you need to connect the **Home** page and the **Details** page. In this section, you will first create a new navigation logic to pass the page parameter created in the previous step.
On the details page, you will then load the business partner address by passing the business partner id to the **A_BusinessPartnerAddress** entity.

1. Open the drop down menu in the top left corner where your current **Details** page name appears. Select **Home** to switch to your Home page to create a logic to pass the Business Partner and Business Partner Full Name parameters from the Home page to the Details page.
   
2. Select the first row in the list.

3. At the bottom of App Builder where you can see **Add logic to LIST ITEM1**. Choose the arrow to open the logic canvas.
   ![image](https://github.com/user-attachments/assets/db8d83be-8814-4c73-9585-896842fec3f6)

4. In the **LOGIC CANVAS** component menu on the left side, choose in the **CORE** tab **NAVIGATION** &rarr; **Open page** to add a function that opens a new page.

5. Drag and drop it next to **Event\Component tap**.

6. Hover over the **Component tap** and choose the round dot. Connect the dots of the **Component tap** and the **Open page** components. It creates a new connection and sets the logic to open a new page on the event of tapping an item in the list item.

   ![image](https://github.com/user-attachments/assets/4bae4faf-48d7-44c0-a4f5-e9eb335f9649)

7. Choose the **Open page** component.

8. On the right side of the screen, select **PROPERTIES** &rarr; **Parameters** &rarr; **businessPartnerId**.

9. Choose the **X** button. It opens a popup.

    ![image](https://github.com/user-attachments/assets/aba2e4cb-4c22-4114-bf3e-ad82e06277d1)


10. Select **Data item in repeat**.

11. Select **current**.

12. Scroll the list and select **BusinessPartner**, and then choose **SAVE**.

    ![image](https://github.com/user-attachments/assets/bba0dcb0-635b-427a-9e7f-8aef9c5c7eff)


13. Repeat the steps 8-11 for to the **businesspartnerName** parameter and select **current.BusinessPartnerFullName**.

    ![image](https://github.com/user-attachments/assets/56680b02-14eb-4fb6-8236-fa3917169b5f)
    
14. Choose **SAVE** to save the changes.

With this step now, you can pass the selected business partner id and name fields from the list to the details page.

### Load Business Partner Address on the Details Page

The detail page receives the Business partner ID from the main page. In this step, the ID is used to get the address of the selected business partner.

1. From the left side of the screen, choose **Home**.

2. Select the **Details** page from there to switch to the Details page.

3. Select the **VARIABLES** tab.

4. Select **DATA VARIABLES** on the left.

5. Choose **ADD DATA VARIABLE**.

6. Select **A_BusinessPartnerAddress** from the list.
   ![image](https://github.com/user-attachments/assets/1f392cef-4df2-48af-9299-0d2f52d5857d)


7. Choose the **Filter Conditions** button on the right.
   ![image](https://github.com/user-attachments/assets/5f4c101b-d936-4e74-b49e-a227c7137441)


9. A popup opens. Select **Object with properties**.
   ![image](https://github.com/user-attachments/assets/bb474712-d8bc-45a3-916d-6feeb05b57e5)

      
10. Choose **Add Condition**. In the **Property** dropdown, select **Business Partner**.

11. Under **Compared Value**, choose button **ABC**.

     <img src="./propertybinding.png">

11. Select **Data and Variables**.

    <img src="./bindingdatavariables.png">

12. Select **Page parameter**.

    <img src="./bindingpageparameter.png">

13. Select **businesspartnerId** and choose **SAVE**.

    ![image](https://github.com/user-attachments/assets/ad39f301-c8f4-4124-83b4-059b0db72a1b)


14. Choose the **SAVE** button to save changes to the page.

15. Go back to the **User Interface** tab now.

Now, your application loads the business partner's address and stores it to the data variable.


### Display the Business Partner Name on the Details Page

Next, you will add a header to the details page, so it displays the current Business Partner.

1. Drag and Drop a **Title** component from the **Core** components to your page.
   ![image](https://github.com/user-attachments/assets/71d9502b-1845-4e41-a7f0-0879a3a55053)


2. Select headline component. On the right side of the screen, choose **ABC** button in **Content** section.

   ![image](https://github.com/user-attachments/assets/849614a2-7fd8-47e9-9cea-ed4b499e3425)


3. Select **Data and Variables**

   <img src="./bindingdatavariables.png">

4. Select **Page parameter**.

   <img src="./bindingpageparameter.png">

5. Select **businesspartnerName** and choose **SAVE**.
   
   <img src="./editbinding.png">



### Display Business Partner Addresses on the Details Page

Next, you will add a list element, which displays the address of the business partner.

1. Drag the **List item** from the **CORE** tab on the left.

   ![image](https://github.com/user-attachments/assets/12e720dc-de64-4f7d-b1d9-09461428955c)


2. From the right **PROPERTIES** panel, find **Arrow Visible** section and select **false** from the dropdown.

3. Choose the **Repeat with** button on the left side of the screen

   ![image](https://github.com/user-attachments/assets/a3fdfea6-5a11-479e-89f3-f9f6b3dea5a1)


1. In the popup, select **Data and Variables** &rarr; **Data variable**.

    <img src="./objectdata.png">

5. Select **A_BusinessPartnerAddress1** from the list.

6. Choose **SAVE**.

   <img src="./bpaddress.png" height="400px">

7. On the right side of the screen, choose **ABC** button under **Primary Label**.
   ![image](https://github.com/user-attachments/assets/21df0dc2-66ea-459e-b061-6e7470e5e35b)

8. Select **Data item in repeat**.

9.  Choose **current**.

10. Scroll and select **StreetName**. Choose **SAVE***.

    <img src="./streetname.png" height="400px">

11. On the right side of the screen, Choose **ABC** button under the **Secondary Label**.

12. Select **Data item in repeat**.

    <img src="./secondarylabel.png">

13. Choose **current**.

14. Scroll and select **PostalCode**. Choose **SAVE**.

     <img src="./postalcode.png">

     <img src="./primarylabel.png" height="400px">

15. Choose **SAVE** at the top of page.

Now, that your app is developed, Let's preview the application.

### Preview Your Application

1. Choose **Preview**.
   ![image](https://github.com/user-attachments/assets/5fde3c92-6bfc-42be-b5e3-78df9727dcd3)

2. Choose **Open web preview** button.

3. Select your application and choose **OPEN**.

   ![image](https://github.com/user-attachments/assets/4fbe5861-9a0a-4853-a837-cee241088b14)


4. Choose the list item to see the details page.

The main page should look like:
    ![main page](../images/preview1.png)

The details page should look like:
    <img src="./ba_deatilspagePreview.png">

### Next Step
[Build and Deploy Your SAP Build Apps Application to SAP BTP](./../../deploy/README.md)

