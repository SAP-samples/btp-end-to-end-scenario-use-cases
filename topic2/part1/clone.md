# Codebase Preparation

## Introduction 

In this section, you will prepare a workspace in SAP Business Application Studio and clone the workshop repository there. Then you will prepare the code to be deployed.

## Task Flow  

In this exercise, you will perform the following tasks:

1. Create development space
2. Clone repository
3. Prepare the codebase

## Content

### Task 1: Create development space

1. In **SAP BTP Cockpit**, navigate to your subaccount.

2. From your left-side subaccount menu, navigate to **Services** &rarr; **Instances and Subscriptions**.

3. Select **Go To Application** button for **SAP Business Application Studio**.

  ![Alt text](img/0010-open-bas.png) 

4. Select **Create Dev Space** button.

  ![Alt text](img/0020-create-dev-space.png) 

5. Enter **dev** as the space name and select **Full Stack Cloud Application**. Then choose **Create Dev Space** button.

  ![Alt text](img/0030-create-dev-space.png)

> It may take several minutes. Please be patient.

6. After the space status has been changed to **RUNNING** select the space name to navigate into.
 
  ![Alt text](img/0040-dev-space-running.png) 

### Task 2: Clone repository

1. On the initial screen choose the "burger" button and then select *View* &rarr; *Terminal* option in the popup menu.

  ![Alt text](img/0050-open-terminal.png) 

2. Switch to the projects folder with the following command:

~~~cli
cd projects
~~~

3. Clone the repository with the following command:

  ```url
  git clone https://github.com/SAP-samples/btp-end-to-end-scenario-use-cases.git -b topic2app
  ```

  ![Alt text](img/0060-git-clone-url.png) 

4. After the cloning has been finished you will see a new project **author-readings** in the **Get Started** window. Just select it to open.

  ![Alt text](img/0070-open-project.png) 

### Task 3: Prepare the codebase

> As all the workshop participants work in one subaccount and one SAP S/4 HANA Cloud system the name of the created artifacts must be unique. To distinguish the objects for all participants in the workshop use the following naming convention: Replace **{YOUR_ID}** in every exercise with your initials plus a 3 digit number. For example instead of **MY_OBJECT_{YOUR_ID}**, use **MY_OBJECT_AB123**. 

1. On the left side in the file explorer select **btp-end-to-end-scenario-use-cases** folder and call the popup menu. Select **Find in Folder...** option.

  ![Alt text](img/0080-find-in-folder.png) 

2. Enter **{YOUR_ID}** as the text to find and your ID (e.g. ab123) as the text to replace. Select **Replace all** button afterwards.

  ![Alt text](img/0090-replace-id.png) 

3. Select the "burger" button to call the main menu and select *View* &rarr; *Terminal* option.

  ![Alt text](img/0100-view-terminal.png) 

4. In the terminal install the packages with the command:

  ```cli
  npm i --save-dev
  ```

  ![Alt text](img/0110-npm-install.png)

## Result

You have now the codebase with your application ready to be deployed.

[Next Tutorial: Deploy the application](./deploy.md)

