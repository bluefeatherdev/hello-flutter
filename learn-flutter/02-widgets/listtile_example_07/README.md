# listtile_example_07

This Flutter application demonstrates how **ListTile widgets** can be wrapped in `Expanded` inside a `Row` to evenly distribute horizontal space.

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `ListTileExample`.

- **ListTileExample**

  - A `StatelessWidget` that builds a `Scaffold` with:

    - An `AppBar` titled *ListTile Sample 07*.

    - A `Center` containing a `Row` with two `Expanded` children.

  - Each `Expanded` contains a `ListTile`:

    1. **First ListTile**

       - `leading`: A `FlutterLogo`.

       - `title`: `"These ListTiles are expanded "`.

    2. **Second ListTile**

       - `leading`: A `FlutterLogo`.

       - `title`: `"to fill the available spaced."`.

## Key Points

- Wrapping a **ListTile** in an `Expanded` widget inside a `Row` ensures that each tile takes up equal horizontal space.

- This technique is useful for creating **side-by-side layouts** where multiple tiles share the available width.

- The `leading` and `title` properties work as expected, but the `Expanded` ensures consistent sizing across the row.

- Demonstrates how **ListTile** can adapt beyond vertical lists into **flexible horizontal layouts**.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
