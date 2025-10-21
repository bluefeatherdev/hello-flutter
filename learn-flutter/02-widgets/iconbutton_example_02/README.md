# iconbutton_example_02

This Flutter application demonstrates the use of the **IconButton widget** with different sizes, tooltips, and labels, arranged in a row.

## Structure

- **IconButtonExampleApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to a `Scaffold` containing:
  
    - An `AppBar` titled *IconButton Sample 02*.
    
    - A `Center` widget with the `IconButtonExample`.

- **IconButtonExample**

  - A `StatefulWidget` that builds a row of icon buttons.

- **_IconButtonExampleState**

  - Builds a `Row` with three icon buttons, each created using the helper method `addIconButton`.
  
  - **addIconButton**:
  
    - Accepts parameters for `icon`, `iconSize`, `tooltip`, and optional `text`.
    
    - Returns a `Column` with:
    
      - An `IconButton` configured with the given properties.
      
      - A `Text` widget below the button if a label is provided.
    - Wrapped in `Padding` for spacing.

## Key Points

- Demonstrates how to **customize IconButton size** using the `iconSize` property.

- Shows how to add **tooltips** for accessibility and better UX.
- Illustrates how to **reuse code** with a helper method (`addIconButton`) to generate consistent button+label pairs.
- Useful for creating **icon-based controls** with varying emphasis or importance.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
