# expanded_example_01

This Flutter application demonstrates the use of the **Expanded widget** inside a `Column` to make a child widget take up the remaining available space between fixed-size widgets. The expanded container now includes a centered label `"flex: 1"` to indicate its flex factor.

## Structure

- **ExpandedApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to a `Scaffold` containing:
  
    - An `AppBar` titled *Expanded Sample 01*.
    
    - The `ExpandedExample` as the body.

- **ExpandedExample**

  - A `StatelessWidget` that builds a `Center` containing a `Column` with three children:
  
    1. A fixed-size `Container` (100x100) with a dark teal color.
    
    2. An `Expanded` widget wrapping a `Container` (width 100, lighter teal color).
       - Expands vertically to fill the remaining space.
       
       - Contains a centered `Text` widget displaying `"flex: 1"`.
       
    3. Another fixed-size `Container` (100x100) with a dark teal color.

## Key Points

- The **Expanded widget** is used to make a child of a `Column`, `Row`, or `Flex` expand to fill the available space.

- In this example:

  - The top and bottom containers have fixed heights.
  
  - The middle container wrapped in `Expanded` stretches to occupy all the remaining vertical space.
  - The centered label `"flex: 1"` makes it explicit that the container is using the default flex factor.
- Useful for building **responsive layouts** where certain elements should adapt to available space while others remain fixed.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
