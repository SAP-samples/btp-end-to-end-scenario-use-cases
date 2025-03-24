# Create Action for CAP Application using SAP Build

## Prerequisite

Deploy the Purchase Order CAP Application using [Deployment of CAP Application](../prerequisites/deployment.md)

## Generate the OpenAPI specification

1. The openAPI specification for this CAP Application is already generated. Click on [open api specification](https://github.com/SAP-samples/s4hana-cloud-extension-process-automation/blob/purchase/docs/purchaseOrderAppSrv.openapi3.json).

> [!NOTE]  
> If you want to generate manually, open the terminal and run the below command to generate open api specification.
> ```sh
>    cds compile srv --service all -o docs --to openapi
> ```

## Create action project

1. Open SAP Build Lobby, under **Connectors**, select **Actions**.

    ![action](./images/createaction/click_action.png)

2. Choose **Create**.

    ![action](./images/createaction/create_action.png)

3. In the Choose an **API Source** popup, under **API Specification**, select **Upload API Specification.**

    ![action](./images/createaction/upload_api.png)

4. Drag and drop or click Browse Files to upload open specification file downloaded in step above.

    ![action](./images/createaction/file_upload.png)

5. Choose **Next**.

6. In the Create an **Action project** popup:

    1. Specify the name as **PurchaseOrder**

    2. Click **Create**

        ![action](./images/createaction/action_name.png)

7. Once the action project is created, the action editor will automatically open. 

8. In the popup, click on the checkmark for */updatespo* under **Service Operations**.

9. Click on **Add**.

    ![action](./images/createaction/select_api.png)

Your Action Project will contain the actions for the CAP service.

## Release and Publish to the Library

1. Click on **Release**.

    ![action](./images/createaction/release1.png)

2. Click on **Release** again.

    ![action](./images/createaction/release2.png)

3. Click on **Publish**.

    ![action](./images/createaction/publish0.png)

4. Click on **Publish** again.

    ![action](./images/createaction/publish.png)

# Create Action for SAP S/4HANA Cloud system using SAP Build

Follow the steps from [Create Business Partner Action Project in SAP Build Actions](https://developers.sap.com/tutorials/spa-business-partner-action-create.html)

**You have successfully created action project.**
