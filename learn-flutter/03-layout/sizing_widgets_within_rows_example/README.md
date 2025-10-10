# sizing_widgets_within_rows_example

This Flutter application demonstrates how to **control the sizing of widgets inside a `Row`** using the `Expanded` widget. By default, children of a `Row` only take up as much horizontal space as they need, but wrapping them with `Expanded` allows them to share the available space proportionally.

- The `RowExpandedApp` sets up a `Scaffold` with an `AppBar` and a body that contains:
  - A `Center` widget → ensures the row is placed in the middle of the screen.

  - Inside the `Center`, a `Row` widget with three children.

- The `Row` widget:
  - Contains three `BorderedImage` widgets.

  - Each child is wrapped with an `Expanded` widget.
  - This forces each image to expand and occupy **equal horizontal space** within the row.

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

- By default, each `Expanded` has a `flex` factor of `1`, meaning equal distribution.
- You can adjust the `flex` property to give some children more space relative to others.
- This example highlights how to avoid overflow issues and create responsive layouts by sizing widgets proportionally.

This project illustrates how to size widgets within a `Row` using the `Expanded` widget.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
