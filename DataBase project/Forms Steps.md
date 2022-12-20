# Database Management System Form Steps:
## Creating the Student canvas:
1. Import the data from the database with the `Data Block Wizard`.

![8](https://user-images.githubusercontent.com/26281629/208731309-b09dde2b-757b-4a11-a065-454f7694614e.png)

2. Change the `Item Type` of the `S_SEX` to be a Radio Group.

![9](https://user-images.githubusercontent.com/26281629/208732026-732cc55e-97e9-42b2-a682-ee6a18ceb860.png)

3. Change the `Item Type` of the `S_DEPARTMENT` to be a List Item and change the styling to be Combo Box.

![10](https://user-images.githubusercontent.com/26281629/208732495-0516373e-235c-4adc-97f2-783e716f2146.png)

## Creating the Team canvas:
1. Import the data for the table `Team_Project` from the database with the `Data Block Wizard`, this time making sure that you select the `create new canvas` option from the `Layout Wizard`, and adding the table with a relation to the `Student` table with the `Pro_Id` column.

![11](https://user-images.githubusercontent.com/26281629/208733385-68af8874-75e8-473e-8913-3938b922406f.png)
![12](https://user-images.githubusercontent.com/26281629/208733770-630f5384-2752-453d-83d1-e37bf6cf931f.png)

2. Create an LOV (List Of Values) between the `Team_Project` table and the `Supervisor` table, with the `SU_ID` column.

![14](https://user-images.githubusercontent.com/26281629/208739820-1f35d3a6-8027-4511-aa8d-53ee0e975975.png)

3. In the LOV Property Palette, under `Functional` change the value of `Automatic Display` to `Yes`.

![15](https://user-images.githubusercontent.com/26281629/208740067-74aa1189-3fc9-43cc-85c8-0fcf8a65f3b0.png)

4. It should now show like this when you click it:

![13](https://user-images.githubusercontent.com/26281629/208740191-99155573-7369-4d89-a11b-af5e4c0cb2fb.png)

5. Do the same last 4 steps with the `PRO_ID` of the `SPONSER` table to link with the `Team_Project` table to show the 3 values: `T_ID`, `T_NAME`, and `Pro_Name`:

![16](https://user-images.githubusercontent.com/26281629/208743439-5307d17b-0a6f-4d6b-a92b-72f3684c1eda.png)

6. Import the data from the `Contest` table from the database with the `Data Block Wizard`, this time making sure you choose the Team canvas we created before, and adding the right Master-Detail relations.
7. Modify the `Item Type` of the `Contest Region` and make it a `List Item`, choose the style to be a `Combo Box`, and lastly add both the values `Local` and `Global` to it.

![17](https://user-images.githubusercontent.com/26281629/208744477-e2dcd548-e87f-4149-895b-0adf7ab5008c.png)

8. And lastly add a checkbox for the SPONSORED column in the table.

![Sponsored checkbox](https://user-images.githubusercontent.com/26281629/208782983-a6371897-4f61-40f6-845c-7f6a9649c78d.png)

### Adding Alerts:
1. Create an error item by clicking, on it and clicking on the `+` icon on the Object Navigator:

![Adding Alert](https://user-images.githubusercontent.com/26281629/208781584-e31cb4fe-629c-4cbe-970e-789284850491.png)

2. We define it's properties and especially the name which we will use later in a script:

![Save Alert Properties](https://user-images.githubusercontent.com/26281629/208781830-51be34fb-f0c2-45d2-953c-960dbb269e5f.png)

3. We create a save button by dragging it into the window from the left side panel of the Layout Navigator window of the STUDENT canvas to trigger the alert and to obviously save:

![Student Canvas](https://user-images.githubusercontent.com/26281629/208782074-fbf6c05b-dd5c-4905-ada3-b1501e37d078.png)

4. Define the properties of that save button:

![Save button STUDENT Properties](https://user-images.githubusercontent.com/26281629/208782153-b197057a-6708-464f-a271-ca2694099153.png)

5. Right click on the button, from `SmartTriggers` choose `WHEN-BUTTON_PRESSED`, which will create a new trigger for the button and open a scripting page to write the script which will run when the button is pressed.

![Save Button Options](https://user-images.githubusercontent.com/26281629/208782283-0439d55c-9f31-4c40-8b5f-1ea59421747d.png)

6. Write the following code, open up a warning alert, and check if the `Student ID` already exists in the database, return a stop alert if it is, and actually save if not.

![Save button PL SQL Script STUDENT](https://user-images.githubusercontent.com/26281629/208782681-67c55182-8300-46db-8c32-1bfc24bb9671.png)

7. Spread that button all over the canvases to save it.

###### And that's probably it, thanks for reading through!
