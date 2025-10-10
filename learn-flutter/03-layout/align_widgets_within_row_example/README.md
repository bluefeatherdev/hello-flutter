# align_widgets_within_row_example

This Flutter application demonstrates how to **align multiple widgets within a `Row`** using the `mainAxisAlignment` property. By default, a `Row` aligns its children to the start of the horizontal axis, but you can control spacing and alignment with different constants.

- The `RowExample` sets up a `Scaffold` with an `AppBar` and a body that contains:
  - A `Center` widget → ensures the row is placed in the middle of the screen.
  
  - Inside the `Center`, a `Row` widget is used with three children.

- The `Row` widget:
  - Uses `mainAxisAlignment: MainAxisAlignment.spaceEvenly`.
  
  - This distributes the free horizontal space **evenly before, between, and after** each child.
  - As a result, the three `BorderedImage` widgets are spaced evenly across the available width.

- The `BorderedImage` widget:
  - Wraps an image of Dash (Flutter’s mascot).
  
  - Uses a `Container` with:
    - A light grey border (`Border.all`).
    
    - Rounded corners (`BorderRadius.circular`).
  - Clips the image with `ClipRRect` to respect the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to scale the image proportionally.

### Key points:
- `mainAxisAlignment` controls alignment along the **main axis** (horizontal for `Row`, vertical for `Column`).

- Common values include:
  - `start`, `end`, `center` → basic alignment.
  - `spaceBetween`, `spaceAround`, `spaceEvenly` → distribute free space differently.
- This example highlights how `spaceEvenly` ensures equal spacing between all children and the edges.

This project illustrates how to align widgets within a `Row` using `mainAxisAlignment`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
