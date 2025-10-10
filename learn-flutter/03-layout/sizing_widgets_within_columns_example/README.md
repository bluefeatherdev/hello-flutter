# sizing_widgets_within_columns_example

This Flutter application demonstrates how to **control the sizing of widgets inside a `Column`** using the `Expanded` widget. By default, children of a `Column` only take up as much vertical space as they need, but wrapping them with `Expanded` allows them to share the available space proportionally.

- The `ColumnExpandedApp` sets up a `Scaffold` with an `AppBar` and a body that contains:
  - A `Center` widget → ensures the column is placed in the middle of the screen.
  
  - Inside the `Center`, a `Column` widget with three children.

- The `Column` widget:
  - Contains three `BorderedImage` widgets.
  
  - Each child is wrapped with an `Expanded` widget.
  - This forces each image to expand and occupy **equal vertical space** within the column.

- The `BorderedImage` widget:
  - Wraps an image of Dash (Flutter’s mascot).
  
  - Uses a `Container` with:
    - A light grey border (`Border.all`).
    
    - Rounded corners (`BorderRadius.circular`).
  - Clips the image with `ClipRRect` to respect the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to scale the image proportionally.

### Key points:

- `Expanded` is used inside `Row` and `Column` to control how children share available space.

- In a `Column`, `Expanded` distributes vertical space among its children.
- By default, each `Expanded` has a `flex` factor of `1`, meaning equal distribution.
- You can adjust the `flex` property to give some children more space relative to others.
- This example highlights how to avoid overflow issues and create responsive vertical layouts by sizing widgets proportionally.

This project illustrates how to size widgets within a `Column` using the `Expanded` widget.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
