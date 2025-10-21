# iconbutton_example_03

This Flutter application demonstrates the use of the **IconButton widget** wrapped inside an `Ink` widget with a custom shape and background decoration.

## Structure

- **IconButtonExampleApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to a `Scaffold` containing:
  
    - An `AppBar` titled *IconButton Sample 03*.
    
    - The `IconButtonExample` as the body.

- **IconButtonExample**

  - A `StatelessWidget` that builds a styled `IconButton`.

- **UI Layout**

  - `Material` with a white background.
  
  - `Center` widget containing:
    - An `Ink` widget with:
    
      - `ShapeDecoration` using a `CircleBorder`.
      
      - A light blue background color.
    - Inside the `Ink`, an `IconButton`:
    
      - Displays the `Icons.android` icon.
      
      - Icon color set to white.
      - `onPressed` callback defined (currently empty).

## Key Points

- Demonstrates how to **style an IconButton** with a circular colored background using `Ink` and `ShapeDecoration`.

- Shows how to combine **Material + Ink + IconButton** for proper ripple effects and theming.
- Useful for creating **custom circular action buttons** with icons, similar to FloatingActionButton but more flexible.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
