# textfield_example

This Flutter application demonstrates **handling user input with TextField** by using a `TextEditingController` to manage text entry.  
It shows how to add labels, borders, and padding to create a simple input form.

## Structure

- **TextFieldApp**  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- **Scaffold UI**  

  - **AppBar** → displays the title `"TextField Sample"`.

  - **Body** → centered `TextFieldExample` widget wrapped in `Padding`.  


- **TextFieldExample**  

  - Defines a `TextEditingController` to manage the input text.  
  
  - Builds a `TextField` with:  

    - `controller` → binds the input field to the controller. 

    - `decoration` → adds `OutlineInputBorder` and a label `"Mascot Name"`.  

## Key Points

- **TextField** is the primary widget for text input in Flutter.  

- **TextEditingController** allows reading and manipulating the text entered.  

- **InputDecoration** provides styling options like borders and labels.  

- Wrapping with `Padding` ensures spacing around the input field.  

- This example is useful for **basic form fields and user input handling**.  

## Example Workflow

1. Launch the app → `TextField Sample` screen is displayed.  

2. The input field appears with the label `"Mascot Name"`.  

3. Tap the field and type text → the controller stores the input.  

4. The border highlights when focused, showing interactive feedback.  

5. The app demonstrates how to build a simple text input form with Flutter.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
