# Database Management System Form Steps:
## Creating the Student form:
1. Start `Oracle Forms Builder`.
2. Connect with a database from `File -> Connect`.
3. Rename our `CANVAS1` to `MAIN` by double-clicking it then typing the name we want.
4. Right-click on the canvas, and choose `Data Block Wizard`.

![1](https://user-images.githubusercontent.com/26281629/208675774-6e89660c-d3ab-445a-9139-55d08bd88503.png)

5. Click `next`.
6. Choose `Table or view` and click `next`.
7. Click `Browse`, and from the pop-up window, choose the table `STUDENT`, then `ok`.

![7](https://user-images.githubusercontent.com/26281629/208676576-29e17189-7c43-4431-a670-969167bdd682.png)

8. Click the double arrow `>>` to move everything over to the right side to be included in the form, then click `next`, then `next` again.

![8](https://user-images.githubusercontent.com/26281629/208677141-476b0561-f2a3-4d7a-89ae-1a840adc4847.png)

9. Click `finish`.
10. In the new pop-up window, click `next`, then `next`, then the double arrow `>>` to move everything over, then `next`.
11. Modify the names for the fields, then `next`.
12. Make sure `Form` is marked, and click `next`.
13. Type `Student Data` in the `Frame Title` text box to make it the header for the form block, then `next`, then `finish`.

### Modifying the value types for the STUDENT form
#### Converting the `S_SEX` into a Radio Group:
1. In the layout editor, select the `S_SEX` item, right-click it, choose `Property Palette`.
2. Under `General`, change `Item Type` to `Radio Group`.
3. In the object navigator, expand the `S_SEX` node -> `Radio Buttons` node, click the create icon, and create two radio buttons.
4. Enter the Property Palette of the two radio buttons and do the following:
- Change `Label` into `Female`, `Radio Button Value` into `F`.
- Change `Label` into `Male`, `Radio Button Value` into `M`.
5. Reposition the two radio buttons in the layout editor, add a label to tell what they are for.
6. Enter the Property Palette of the radio group, that is, the S_SEX item itself, and under `Data`, change `Initial Value` to `F`.
7. Now under `Functional`, change `Mapping of Other Values` to `F`.

#### Converting the `S_DEPARTMENT` into a Combo Box:
1. In the layout editor, select the `S_DEPARTMENT` item, enter Property Palette.
2. Under `General`, change `Item Type` into `List Item`.
3. Under `Functional`, change `List Style` into `Combo Box`, and add all our departments in the `Elements in List`.
