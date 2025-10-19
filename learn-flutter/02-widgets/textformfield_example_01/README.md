# text_form_field_example_01

This Flutter application demonstrates the use of the **TextFormField widget** inside a `Form`, with validation and save logic.

## Structure

- **TextFormFieldExampleApp**

  - Root widget with `MaterialApp` and `Scaffold`.
  
  - Displays an `AppBar` and the `TextFormFieldExample` widget as the body.

- **TextFormFieldExample**

  - A `StatefulWidget` that manages form state.
  
  - Uses a `GlobalKey<FormState>` to reference and validate the form.

- **_TextFormFieldExampleState**

  - Builds a `Form` containing:
  
    - A `TextFormField` with:
    
      - `InputDecoration` including an icon, hint text, and label text.
      
      - An `onSaved` callback to process the input value.
      - A `validator` that checks if the input contains the `@` character and returns an error if so.
    - An `ElevatedButton` labeled *Submit*:
    
      - On press, calls `validate()` on the form state.
      
      - If validation passes, calls `save()` to trigger the `onSaved` logic.

## Key Points

- **TextFormField** is a specialized form field widget that integrates with `Form` for validation and saving.

- **Form widget** groups form fields and provides validation management.
- **GlobalKey<FormState>** allows access to the form’s state for validation and saving.
- **Validator** provides inline error messages when input does not meet conditions.
- This example illustrates a **basic form setup** with a single text field and a submit button.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
