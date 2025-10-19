# textformfield_example_02

This Flutter application demonstrates the use of multiple **TextFormField widgets** inside a `Form`, combined with keyboard shortcuts and focus traversal for improved user interaction.

## Structure

- **TextFormFieldExampleApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to `TextFormFieldExample`.

- **TextFormFieldExample**

  - A `StatefulWidget` that builds the form interface.

- **_TextFormFieldExampleState**

  - Builds a `Material` widget containing:
  
    - A `Center` widget with a `Shortcuts` configuration:
    
      - Maps the **space bar** (`LogicalKeyboardKey.space`) to a `NextFocusIntent`, allowing navigation to the next field when space is pressed.
    - A `FocusTraversalGroup` to manage focus order across fields.
    - A `Form` with:
    
      - `autovalidateMode: AutovalidateMode.always` to trigger validation automatically.
      
      - `onChanged` callback that calls `save()` on the current form state whenever a field changes.
      - A `Wrap` widget that generates **five `TextFormField` inputs** dynamically:
      
        - Each field is wrapped in `Padding` and `ConstrainedBox` to set consistent size.
        
        - Each `TextFormField` has an `onSaved` callback that logs its value with the field index.

## Key Points

- Demonstrates how to use **Shortcuts** and **NextFocusIntent** to customize keyboard navigation between fields.

- Shows how to group fields with **FocusTraversalGroup** for logical focus order.
- Uses **autovalidateMode** to validate inputs continuously without requiring manual submission.
- Illustrates how to dynamically generate multiple form fields with `List.generate`.
- Useful for building **multi-field forms** with enhanced keyboard accessibility and automatic saving.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
