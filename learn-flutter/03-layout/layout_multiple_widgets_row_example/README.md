# layout_multiple_widgets_row_example

This Flutter application demonstrates how to **lay out multiple widgets horizontally using the `Row` widget**. The `Row` arranges its children along the horizontal axis, one after another.

- The `RowExample` sets up a `Scaffold` with an `AppBar` and a body that contains:
  - A `Center` widget → ensures the row is placed in the middle of the screen.

  - Inside the `Center`, a `Row` widget is used with three children.

- The `Row` widget:
  - Has a `children` property that accepts a list of widgets.

  - In this example, it contains three instances of the custom `BorderedImage` widget.
  - By default, the row aligns its children to the start of the main axis (left side), unless alignment properties are specified.

- The `BorderedImage` widget:
  - Wraps an image of Dash (Flutter’s mascot).

  - Uses a `Container` with:
    - A light grey border (`Border.all`).
  
    - Rounded corners (`BorderRadius.circular`).
  - Clips the image with `ClipRRect` to respect the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to scale the image proportionally within the container.

### Key points

- `Row` is used for **horizontal layouts**, while `Column` is used for **vertical layouts**.

- Each child of a `Row` can be any widget, including other layout widgets like `Column` or `Expanded`.
- This example highlights the basics of arranging multiple widgets side by side.

This project illustrates how to use the `Row` widget to build horizontal layouts in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
