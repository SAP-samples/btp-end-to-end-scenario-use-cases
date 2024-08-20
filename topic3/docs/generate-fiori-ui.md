---
outline: [2,2]
impl-variants: true
---

# Overview

SAP Fiori elements provides designs for UI patterns and predefined floorplans for common application use cases. Application developers can use SAP Fiori elements to create SAP Fiori applications based on OData services and annotations that don’t need JavaScript UI coding. The resulting application uses predefined views and controllers that are provided centrally. This means no application-specific view instances are required. SAPUI5 interprets the metadata and the annotations of the underlying OData service and uses the corresponding views for the SAP Fiori application at startup.

# Generate the UI with an SAP Fiori Elements Template

1. In SAP Business Application Studio, go to your **IncidentManagement** dev space.

    > Make sure the **IncidentManagement** dev space is in status **RUNNING**.

2. Choose the burger menu and then choose **View** &rarr; **Command Palette**.

    > You can also invoke the Command Palette quickly using the following key combination:
    >
    > - For macOS: <kbd>Command</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>
    > - For Windows: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>

3. Type **Fiori: Open Application Generator** in the field and select this entry from the list.

4. In the **Template Selection** select the **List Report Page** template tile. Then Choose **Next**.

    <!-- border; size:540px -->
    ![V4 Template](./images/vscv4template.png)

<div class="impl node">

5. In the **Data Source and Service Selection** step:

    - In the **Data source** dropdown menu, select **Use a Local CAP Project**.

    - In the **Choose your CAP project** dropdown menu, select the **incident-management** project.

    - In the **OData service** dropdown menu, select the **ProcessorService (Node.js)**.
    
    - Choose **Next**.

        <!-- border; size:540px --> 
        ![CAPpro](./images/datasourceselection.png)

</div>

<div class="impl java">

6. In the **Data Source and Service Selection** step:

    - In the **Data source** dropdown menu, select **Use a Local CAP Project**.

    - In the **Choose your CAP project** dropdown menu, select the **incident-management** project.

    - In the **OData service** dropdown menu, select the **ProcessorService (Java)**.
    
    - Choose **Next**.

        <!-- border; size:540px --> 
        ![CAPpro](./images/datasourceselectionjava.png)

</div>

   > tip
   >In case you get the error: `Node module @sap/cds isn't found. Please install it and try again`, you have to install the corresponding CAP module which is >also required   by the app generator as described in [Add CAP Tooling](https://cap.cloud.sap/docs/tools/#command-line-interface-cli)
   > If not already done, please open a command line and run the following command:

   > ```bash
   > npm install --global @sap/cds-dk --@sap:registry=https://registry.npmjs.org/
   > ```

   >See the [CAP Troubleshooting guide](https://cap.cloud.sap/docs/advanced/troubleshooting#npm-installation) for more details.


7. In the **Entity Selection** step:

    - In the **Main entity** dropdown menu, select **Incidents**.
    - Leave the **Navigation entity** value as **none**.
    - Leave  **Yes** selected to add table columns automatically.
    - Leave the **Table Type** value as **Responsive**.   
    - Choose **Next**.

        <!-- border; size:540px --> 
        ![Entity selection](./images/entityselection.png)

8. In the **Project Attributes** step:

    - In the **Module name** field, enter **incidents**.

    - In the **Application title** field, enter **Incident-Management**.

    - In the **Application namespace** field, enter a unique value eg.,**ns01**.

    - Leave the default values for all the other settings and choose **Finish**.

        <!-- border; size:540px --> 
        ![Project names](./images/vscrfeapp.png)

    The application is now generated and in a few seconds you can see the application's **incidents** folder in the **app** folder of your **incident-management** project. It contains a **webapp** folder with a **Component.js** file that is typical for an SAPUI5 application. However, the source code of this application is minimal. It inherits its logic from the **sap/fe/core/AppComponent** class. This class is managed centrally by SAP Fiori elements and provides all the services that are required (routing, edit flow) so that the building blocks and the templates work properly.


# Add List and Report Page

1. The tutorials to generate [List and Object page](https://developers.sap.com/tutorials/add-fiori-elements-uis.html#f9446c7a-810d-4c8f-a00b-b146386dd8bd) to be followed to generate list and report pages. Inorder to save time we will be now copying the annotations and pasting it into the project's folder.

2. Cpoy the folder `_i18n` from `./docs/files` and paste it into the root folder of your project

3. Navigate to `app/incidents` folder from the projects root directory.
    Copy the contents of the file `./docs/files/annotations.cds` to `annotations.cds` in the working directory

4. Lets do the below to get a flavor of how the generation of annotations looks like with Fiori Elements

5. Invoke the Command Palette - **View** &rarr; **Command Palette** or <kbd>Command</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> for macOS / <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> for Windows. 

6. Select **Fiori: Open Application Info**.

7. In the **Application Info - incidents** tab, click the **Open Page Map** tile. 

    <!-- border; size:540px --> 
    ![Page Map](./images/PageMap.png)

    The page map of the **incidents** application opens in a new tab within SAP Business Application Studio. You will see the properties on the right side of the page map. You can edit these properties to update the UI of the application.

    <!-- border; size:540px --> 
    ![Page Map properties](./images/PageMap-properties.png)

8. In the **List Report** tile, click the **Pencil** icon next to the title. The page editor is opened.

    <!-- border; size:540px --> 
    ![List Report Page Config](./images/ls3.png)

9. Select **Table** in the left pane of the page editor. In the **Initial Load** dropdown menu, select **Enabled** to load the data automatically.

    <!-- border; size:540px --> 
    ![Enable Data Auto Load](./images/ls8.png)

10. Lets also edit the object page. Make sure the SAP Fiori page editor is open. If you closed it, choose the **Open Page Map** option in the **Application Info - incidents** tab.

    > To open the **Application Info - incidents** tab: 
    >
    >1. Invoke the Command Palette - **View** &rarr; **Command Palette** or <kbd>Command</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> for macOS / <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> for Windows. 
    >2. Choose **Fiori: Open Application Info**.

11. In the **Incident Object Page** tile, click the **Pencil** icon next to the title.

    <!-- border; size:540px --> 
    ![Edit object page](./images/obj0.png)

12.  In the **Creation Mode: Name** dropdown menu, select **Inline**. With it, the create action adds a new row at the table instead of navigating to a new object entry page.

 ![Table creation mode](./images/obj95.png)