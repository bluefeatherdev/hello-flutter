# align_widgets_within_column_example

This Flutter application demonstrates how to **align multiple widgets within a `Column`** using the `mainAxisAlignment` property. By default, a `Column` aligns its children to the top of the vertical axis, but you can control spacing and alignment with different constants.

- The `ColumnExample` sets up a `Scaffold` with an `AppBar` and a body that contains:
  - A `Center` widget → ensures the column is placed in the middle of the screen.
  
  - Inside the `Center`, a `Column` widget is used with three children.

- The `Column` widget:
  - Uses `mainAxisAlignment: MainAxisAlignment.spaceEvenly`.
  
  - This distributes the free vertical space **evenly above, between, and below** each child.
  - As a result, the three `BorderedImage` widgets are spaced evenly across the available height.

- The `BorderedImage` widget:
  - Wraps an image of Dash (Flutter’s mascot).
  
  - Uses a `Container` with:
    - A light grey border (`Border.all`).
    
    - Rounded corners (`BorderRadius.circular`).
  - Clips the image with `ClipRRect` to respect the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to scale the image proportionally.

### Key points:
- `mainAxisAlignment` controls alignment along the **main axis** (vertical for `Column`, horizontal for `Row`).

- Common values include:
  - `start`, `end`, `center` → basic alignment.
  
  - `spaceBetween`, `spaceAround`, `spaceEvenly` → distribute free space differently.
- This example highlights how `spaceEvenly` ensures equal spacing between all children and the edges in a vertical layout.

This project illustrates how to align widgets within a `Column` using `mainAxisAlignment`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
