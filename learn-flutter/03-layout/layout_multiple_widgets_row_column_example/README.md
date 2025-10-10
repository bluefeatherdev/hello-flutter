# layout_multiple_widgets_row_column_example

This Flutter application demonstrates how to **combine `Row` and `Column` widgets** to create more complex layouts. By nesting columns inside a row, you can arrange widgets both horizontally and vertically.

- The `RowColumnExample` sets up a `Scaffold` with an `AppBar` and a body that contains:
  - A `Row` widget → arranges its children horizontally.
  
  - Each child of the `Row` is a `Column` widget that arranges its children vertically.

- Each `Column` contains:
  - A `BorderedImage` widget → a custom widget that displays Dash (Flutter’s mascot) with a border and rounded corners.
  
  - A `Text` widget → a label under the image (`Dash 1`, `Dash 2`, `Dash 3`).

- The `BorderedImage` widget:
  - Wraps an image of Dash inside a `Container`.
  
  - Adds a light grey border and rounded corners.
  - Uses `ClipRRect` to ensure the image respects the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to scale the image proportionally.

### Key points:
- `Row` arranges widgets **horizontally**.

- `Column` arranges widgets **vertically**.
- By nesting `Column` widgets inside a `Row`, you can create grid-like layouts (e.g., image + label pairs).
- This pattern is commonly used for **icon + text** combinations, product cards, or profile layouts.

This project illustrates how to compose `Row` and `Column` together to build more complex and structured layouts in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
