# form_example

This Flutter application demonstrates handling user input with Form and TextFormField.  
It shows how to validate input using a GlobalKey<FormState> and provide feedback when submitting.

## Structure

- FormApp  

  Root widget with MaterialApp.  

  Sets the home to a Scaffold containing the sample UI.  

- Scaffold UI  

  - AppBar → displays the title Form Sample  


  - Body → centered FormExample widget  

- FormExample  

  A StatefulWidget that manages form validation.  

  - Defines a GlobalKey<FormState> to access the form state  


  - Builds a Form widget containing:  


    - TextFormField → input field with hint text Enter your email  
  
  
      - Validator checks if the field is empty and returns an error message  
    
    
    - ElevatedButton → triggers form validation when pressed  

## Key Points

- Form groups multiple input fields and manages validation state 
 
- GlobalKey<FormState> allows validating and saving form data  
- TextFormField provides built-in validation support  
- ElevatedButton can trigger validation by calling _formKey.currentState!.validate()  
- This example is useful for building forms with validation logic in Flutter  

## Example Workflow

1. Launch the app → Form Sample screen is displayed  

2. Enter text into the field → validator checks if empty  
3. Press Submit → validation runs  
4. If empty → error message Please enter some text is shown  
5. If valid → form passes validation and data can be processed  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
