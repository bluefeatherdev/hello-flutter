# showmodalbottomsheet_example_02

This Flutter application demonstrates the use of the **showModalBottomSheet** function with a `SizedBox` to control the height of the modal bottom sheet.

## Structure

- **BottomSheetApp**

  - Root widget with `MaterialApp`.
  
  - Applies a `ThemeData` with a seeded color scheme (`Color(0xff6750a4)`).
  - Sets the home to a `Scaffold` containing:
  
    - An `AppBar` titled *showModalBottomSheet Sample 02*.
    
    - The `BottomSheetExample` as the body.

- **BottomSheetExample**

  - A `StatelessWidget` that builds a centered `ElevatedButton`.
  
  - When pressed, it calls `showModalBottomSheet`.

- **showModalBottomSheet**

  - Displays a modal bottom sheet with:
  
    - A `SizedBox` of fixed height (200).
    
    - A `Center` widget containing a `Column` with:
    
      - A `Text` widget: *Modal BottomSheet*.
      
      - An `ElevatedButton` that closes the bottom sheet using `Navigator.pop`.

## Key Points

- Demonstrates how to use **`SizedBox`** to explicitly set the height of the modal bottom sheet.

- The modal bottom sheet blocks interaction with the rest of the app until dismissed.
- The `Navigator.pop` call is used to close the bottom sheet programmatically.
- Useful for presenting **temporary content or actions** with a controlled height.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
