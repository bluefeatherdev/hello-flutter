# showmodalbottomsheet_example_01

This Flutter application demonstrates the use of the **showModalBottomSheet** function to display a modal bottom sheet with custom content.

## Structure

- **BottomSheetApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to a `Scaffold` containing:
  
    - An `AppBar` titled *showModalBottomSheet Sample 01*.
    
    - The `BottomSheetExample` as the body.

- **BottomSheetExample**

  - A `StatelessWidget` that builds a centered `ElevatedButton`.
  
  - When pressed, it calls `showModalBottomSheet`.

- **showModalBottomSheet**

  - Displays a modal bottom sheet with:
  
    - A `Container` of fixed height (200) and amber background.
    
    - A `Center` widget containing a `Column` with:
    
      - A `Text` widget: *Modal BottomSheet*.
      
      - An `ElevatedButton` that closes the bottom sheet using `Navigator.pop`.

## Key Points

- **showModalBottomSheet** is used to present temporary content anchored to the bottom of the screen.

- The modal bottom sheet blocks interaction with the rest of the app until dismissed.
- The `Navigator.pop` call is used to close the bottom sheet programmatically.
- Useful for presenting **contextual actions, menus, or additional options** without leaving the current screen.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
