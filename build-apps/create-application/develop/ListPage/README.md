## Create a Business Partner List Page

To create the page displaying the list of business partners, you need to first create a **data variable**.

#### Data Variable

A data variable is essentially the same as a page variable that exists in the context of the current page that is not accessible from other pages, and disappears if the page is removed from the navigation stack. The difference is that it gets its schema from the data resource it points to, and it comes with included default logic.


### Creating a Data Variable

Let us create a data variable to store the results of the business partner data coming from the data source.

1. Select the **<> VARIABLES** tab in the header navigation.
  ![image](https://github.com/user-attachments/assets/1a9eb499-dac7-474a-8731-931df4d96f80)

3. Choose **DATA VARIABLES** on the left side of app builder.

4. Now, choose **ADD DATA VARIABLE** and select **A_BusinessPartner**.
  
    ![image](https://github.com/user-attachments/assets/bd368329-ab56-4e1e-b758-c4a2b176f451)

5. Choose **SAVE**.

Now that the data variable is created, go back to the **User Interface** tab.

### Creating a Business Partner List

At this step, you are creating a Business Partner List page in app builder.
#### Check That the Data Is Visible in the UI

1. On the left panel of User Interface, you see the **CORE** tab, scroll to the **LIST** section and choose **List item**.

   ![image](https://github.com/user-attachments/assets/0d4fad71-6e25-45d4-a499-6b0f72b891af)

2. Drag the **List item** to the application's page.

3. On the right side **PROPERTIES** section, scroll to **Repeat with** and select it.

   ![Component](../images/ba_editProperties.png)

4. A popup opens. Select **Data and Variables**, then choose **Data variable**.


   ![Data](../images/datavariable.png)

5. Select **A_BusinessPartner1** from the list and choose **SAVE**.

You have now configured that the list gets populated with the data variable which gets business partner data from the backend system.

#### Select the display fields for the List

Let us now define what fields we would like to show in the UI in the business partners list.

1. Choose the list.

2. Go to **PROPERTIES**.

3. Choose Primary Label **ABC**.

    ![ABC](../images/primarylabel1.png)

4. Choose **Data item in repeat**.

5. Choose **current**.

6. Select **BusinessPartner** scroll and choose **SAVE**.

    ![BusinessPartner](../images/selectItem1.png)

7. Go to **PROPERTIES**.

8. Choose Secondary Label **ABC**.

9. Choose the **Data item in repeat**.

10. Choose **current**.

11. Select **BusinessPartnerFullName**.

12. Choose **SAVE** to add the data variable to the list.

13. Choose **SAVE** to save the changes in the application.

### Preview the Application

1. Choose **Preview**.
   ![image](https://github.com/user-attachments/assets/216a77ce-1d5e-4117-a631-0d90287dc79f)

3. Choose button **Open web Preview**.

4. A new tab opens. Select the application you have created.

5. The application is launched in the preview portal.

    ![image](https://github.com/user-attachments/assets/1df1b4f1-b2d4-42d7-8bfe-4e61f32b9d01)

The application's first page is now displayed.

### Next Step
[Create a Business Partner Details Page](./../DetailsPage/README.md)