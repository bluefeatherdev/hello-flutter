# expanded_example_02

This Flutter application demonstrates the use of the **Expanded widget** with the `flex` property inside a `Row` to control how much horizontal space each child occupies relative to the others.

## Structure

- **ExpandedApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to a `Scaffold` containing:
  
    - An `AppBar` titled *Expanded Sample 02*.
    
    - The `ExpandedExample` as the body.
    

- **ExpandedExample**

  - A `StatelessWidget` that builds a `Center` containing a `Row` with three children:
  
    1. An `Expanded` widget with `flex: 2` wrapping a `Container` (teal color, height 100).
    
       - Occupies **twice the horizontal space** compared to the other `Expanded` child.
       
       - Displays centered text `"flex: 2"`.
    2. A fixed-size `Container` (teal color, height 100, width 50).
    3. An `Expanded` widget with default `flex: 1` wrapping a `Container` (teal color, height 100).
    
       - Occupies **one part** of the remaining horizontal space.
       
       - Displays centered text `"flex: 1"`.

## Key Points

- The **Expanded widget** distributes available space in a `Row`, `Column`, or `Flex` according to the `flex` factor.

- In this example:

  - The first expanded container (`flex: 2`) takes **twice as much width** as the second expanded container (`flex: 1`).
  
  - The middle container has a fixed width of 50 and does not expand.
- Useful for building **proportional layouts** where widgets share space dynamically.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
