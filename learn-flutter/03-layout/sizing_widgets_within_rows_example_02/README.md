# sizing_widgets_within_rows_example_02

This Flutter application demonstrates how to **control the relative sizing of widgets inside a `Row`** using the `Expanded` widget with different `flex` values. By default, children of a `Row` only take up as much horizontal space as they need, but wrapping them with `Expanded` allows them to share the available space proportionally.

- The `RowExpandedApp` sets up a `Scaffold` with an `AppBar` and a body that contains:
  - A `Center` widget → ensures the row is placed in the middle of the screen.
  
  - Inside the `Center`, a `Row` widget with three children.

- The `Row` widget:
  - Contains three `BorderedImage` widgets.
  
  - Each child is wrapped with an `Expanded` widget.
  - The first and third children use the default `flex: 1`.
  - The middle child uses `flex: 2`, meaning it takes up **twice as much horizontal space** as its siblings.

- The `BorderedImage` widget:
  - Wraps an image of Dash (Flutter’s mascot).
  
  - Uses a `Container` with:
    - A light grey border (`Border.all`).
    
    - Rounded corners (`BorderRadius.circular`).
  - Clips the image with `ClipRRect` to respect the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to scale the image proportionally.

### Key points:

- `Expanded` distributes available space in a `Row` or `Column` according to the `flex` factor.

- Default `flex` is `1`, meaning equal distribution.
- A child with `flex: 2` takes up **twice the space** of a child with `flex: 1`.
- This example highlights how to create responsive layouts where some widgets are emphasized by giving them more space.

This project illustrates how to size widgets within a `Row` using the `Expanded` widget with different `flex` values.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
