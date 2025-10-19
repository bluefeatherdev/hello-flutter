# floating_action_button_example_03

This Flutter application demonstrates how to style the **FloatingActionButton (FAB)** using different colors from the app’s `ColorScheme`.

## Structure

- **FloatingActionButtonApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to `FloatingActionButtonExample`.

- **FloatingActionButtonExample**

  - Stateless widget that builds a `Scaffold` with:
  
    - An `AppBar` titled *FloatingActionButton Sample 03*.
    
    - A `Center` widget containing a `Row` with three columns.
  - Each column demonstrates a large FAB styled with different `ColorScheme` values:
  
    - **Surface**
    
      - Background: `colorScheme.surface`
      
      - Foreground: `colorScheme.primary`
      - Label below: *Surface*
    - **Secondary**
      - Background: `colorScheme.secondary`
      
      - Foreground: `colorScheme.onSecondaryContainer`
      - Label below: *Secondary*
    - **Tertiary**
      - Background: `colorScheme.tertiaryContainer`
      
      - Foreground: `colorScheme.onTertiaryContainer`
      - Label below: *Tertiary*
  - Uses a helper widget `titleBox` to render styled labels under each FAB.

## Key Points

- Demonstrates how to **map FAB colors** to different roles in the `ColorScheme`.

- Shows how to use **foregroundColor** and **backgroundColor** to adapt FABs to theme palettes.
- Illustrates the use of **DecoratedBox** and `Padding` to create labeled boxes for clarity.
- Useful for understanding **Material 3 color theming** and how FABs can visually adapt to different surfaces and roles.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
