# form_example_01

This Flutter application demonstrates the use of the **Form widget** with a `TextFormField` and validation logic.

## Structure

- **FormExampleApp**

  - Root widget with `MaterialApp` and `Scaffold`.
  
  - Displays an `AppBar` and the `FormExample` widget as the body.

- **FormExample**

  - A `StatefulWidget` that manages form state.
  
  - Uses a `GlobalKey<FormState>` to reference and validate the form.

- **_FormExampleState**

  - Builds a `Form` containing:
  
    - A `TextFormField` with:
    
      - `InputDecoration` showing a hint text ("Enter your email").
      
      - A `validator` that checks if the field is empty and returns an error message if so.
    - An `ElevatedButton` labeled *Submit*:
    
      - On press, calls `validate()` on the form state.
      
      - If validation passes, data can be processed.

## Key Points

- **Form widget** groups multiple form fields and provides validation management.

- **GlobalKey<FormState>** allows access to the form’s state for validation.
- **TextFormField** supports built-in validation through the `validator` property.
- **ElevatedButton** triggers validation and can be extended to handle data submission.
- This example illustrates a **basic form setup** with validation in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
