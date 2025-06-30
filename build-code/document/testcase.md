## Add Test Cases with Joule

This section describes to create few test cases using a Joule prompt.

## Prerequisite

Create a UI application using a Joule prompt following the steps at [Create SAP Fiori UI with Joule](./fiori-ui.md).

## Add Test Cases

1. Navigate to **Storyboard**.

    ![Testcase](../images/custom-logic/storyboard.png)

2. In the **Services** section, choose the **Incidents** entity under **ProcessorService** and then choose **Add Logic**.

    ![Testcase](../images/custom-logic/add_logic_click.png)

3. The **Application Logic Editor** appears.

4. In the **Application Logic Editor**, change the value of the **Name** field to **incidents-test** and choose **Add**.

    ![Testcase](../images/testcases/testname.png)

5. In the **Phase** area, select **After** and in the **Standard Event** select **Read**.

    ![Testcase](../images/testcases/selectphase.png)

6. Choose **Open Code Editor -> Unit Test**.

    ![Testcase](../images/testcases/unittest.png)

7. By default test environment is not enabled in Build Code. Click **yes** in the pop-up to enable. 

    ![confirm-test-env](../images/testcases/confirm_env.png)

8. This will open Joule to create testcases.

    ![Testcase](../images/testcases/joule_start.png)

    > In the Joule prompt, **/cap-unit-test** is used to write test cases for the created services.

9. The Joule prompt will be prefilled with `/cap-unit-test #tests/code/test-incidents-test.js`. After the prefilled command, use the following prompt to create the testcase.

    ```console
    Test case to read all the incidents, and check only if the status code is 200. OData endpoint is /odata/v4/processor/Incidents
    ```
    
10. Choose the **Send** icon.

    ![Testcase](../images/testcases/joule_send.png)

11. Once Joule responds with the code, check and accept the implementation. 

> [!Note]
> /cap-unit-test prompt for adding test cases still under development. If the generated code has some errors, replace it with the below code snippet to test a READ call for the Incidents entity

```js
module.exports = async function(GET, POST, PATCH, DELETE, expect) {
  // Send a GET request to the OData endpoint for Incidents
  const response = await GET('/odata/v4/processor/Incidents');

  // Assert that the response status code is 200
  expect(response.status).to.equal(200);
};
```

## Test the application

1. Open Terminal by clicking on the hamburger icon, and click on **Terminal -> New Terminal**.

    ![Testcase](../images/testcases/terminal.png)
2. Install the CAP test plugin
   ```sh
    npm add -D @cap-js/cds-test
   ```
> This is a library with test utilities for CAP Node.js applications
3. To test the application, run the following command in the terminal:

    ```sh
        npm run test
    ```
    ![Testcase](../images/testcases/testcase.png)

## Next Step

To deploy the application to SAP BTP, Cloud Foundry runtime, follow the steps at [Exercise 2 - Deploy to SAP BTP Cloud Foundry Runtime](../README.md#optional-exercise-2-deploy-in-sap-btp-cloud-foundry-runtime).
