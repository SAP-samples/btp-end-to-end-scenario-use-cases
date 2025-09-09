# Update Main Page

## Introduction

In this task, you will update the application’s main page by adding navigation buttons for the two new pages and making small adjustments to the app’s design.

## Content

1. In the page selector dropdown list, select **My Day in The Office** page.

    ![](img/e01.png) 

2. Drag **Container** component to the page, right between **Page Content Title** and **Book a room** button.

    ![](img/e02.png) 

3. Choose **Style** and select **Duplicate** for the **Information** style.

    ![](img/e03.png) 

4. Enter **Main Page Special Button** to the **New style class name** field and then choose **OK**.

    ![](img/e04.png) 

5. Apply the new style by selecting it. Afterwards choose **Edit**.

    ![](img/e05.png) 

6. Select **FAVORITE** in the **Background color** field and then choose **Overwrite**.

    ![](img/e06.png) 

7. Choose **Layout** tab, set the **Horizontal** layout with the middle components alignment as shown on the screenshot below.

    ![](img/e07.png) 

8. Scroll down and choose **Custom** in the **Width and Height** section. Then select **Set height** from the dropdown list and enter **90px** to the **Set height** field.

    ![](img/e07a.png) 

9. Choose **Properties** tab and enter **Benefits Button** to the **Component display name** field.

    ![](img/e07b.png) 

10. Drag **Title** and **Icon** components to the new container as shown at the screenshot below.

    ![](img/e08.png) 

11. Choose the new title field and enter the following data:

    | Field | Value |
    | ----- | ----- |
    | Content | Your in office benefits |
    | Component display name | Benefits Button Title |

    ![](img/e09.png) 

12. Choose **Style** tab and then select **Buttons Text** style.

    ![](img/e10.png) 

13. Choose **Layout** tab and then choose **Fit content** in the **Width and Height** section.

    ![](img/e11.png) 

14. Select the new icon component and enter the following data:

    | Field | Value |
    | ----- | ----- |
    | Icon | heart |
    | Component display name | Benefits Button Icon |

    ![](img/e12.png) 

15. Choose **Style** tab and then choose **Buttons Icon** style.

    ![](img/e13.png) 

16. Choose **Benefits Button** container and then choose **Add logic to Benefits Button**.

    ![](img/e14.png) 

17. Drag **Open page** logic block to the canvas. Connect it to the **Component Tap** event and then select **Benefits** in the **Page** field.

    ![](img/e15.png) 

18. Choose **Book a room** container button. Then choose **Duplicate**.

    ![](img/e16.png) 

19. Having the new button selected, enter **Order Lunch Button** to the **Component display name** field.

    ![](img/e17.png) 

20. Choose a title inside the new button and enter **Order Lunch** to the **Content** field.

    ![](img/e18.png) 

21. Choose **Book a room** button and then choose **Layout** tab. Increase the number of cells once with the **+** button to add a separator.

    ![](img/e19.png) 

22. Drag **Book a room** button to the right.

    ![](img/e20.png) 

23. Choose **Order Lunch** button and open the logic canvas. Drag **Receive Event** block to the canvas and select **Component tap** for the **Event source** field.

    ![](img/e21.png) 

24. Drag **Open page** logic block to the canvas. Connect it to the **Component Tap** event and then select **Order Lunch** in the **Page** field.

    ![](img/e22.png) 

25. In the components tree choose **Header Container**. Set the new **Background Image** for it. Use `office.jpg` file from the *Assets folder* for upload.

    ![](img/e23.png) 

26. For the buttons **Order Lunch** and **Book a room** set the following backgrounds:

    | Button | File from the *Assets folder* |
    | ------ | ----------------------------- |
    | Order Lunch | `lunch.jpg` |
    | Book a room | `room.jpg` |

    ![](img/e24.png) 

27. Choose **Book a room** button and then choose **Style** tab. Call the context menu for the **Main Screen Buttons** style and choose **Edit**.

    ![](img/e25.png) 

28. Set **Border style** to **none** and then choose **Overwrite**. You could also notice that for the background color they use the color named **TILE**. In the next step you want to change it in the app theme.

    ![](img/e26.png) 

29. Choose **App Settings** > **Theme**.

    ![](img/e27.png) 

30. Choose **Tile** color and enter `#333333` to the **HEX** field.

    ![](img/e28.png) 

31. Choose **User Interface**. Now you can see the main page with the updated design.

    ![](img/e29.png)

## Next Step

[Preview Application](./preview.md)