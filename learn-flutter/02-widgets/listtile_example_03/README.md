# listtile_example_03

This Flutter application demonstrates different configurations of the **ListTile widget** inside `Card` widgets, showing variations with leading, trailing, dense, two-line, and three-line tiles.

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `ListTileExample`.

- **ListTileExample**

  - A `StatelessWidget` that builds a `Scaffold` with:

    - An `AppBar` titled *ListTile Sample 03*.

    - A `ListView` containing multiple `Card` widgets, each wrapping a `ListTile`.

  - The `ListTile` variations include:

    1. **One-line ListTile**

       - A simple `ListTile` with only a `title`.

    2. **One-line with leading widget**

       - A `ListTile` with a `FlutterLogo` as the leading widget.

    3. **One-line with trailing widget**

       - A `ListTile` with an `Icon(Icons.more_vert)` as the trailing widget.

    4. **One-line with both leading and trailing widgets**

       - A `ListTile` with a `FlutterLogo` as leading and an `Icon` as trailing.

    5. **One-line dense ListTile**

       - A `ListTile` with `dense: true` for reduced vertical height.

    6. **Two-line ListTile**

       - A `ListTile` with a larger `FlutterLogo`, a `title`, and a `subtitle`.

       - Includes a trailing `Icon`.

    7. **Three-line ListTile**

       - A `ListTile` with an even larger `FlutterLogo`, a `title`, and a longer `subtitle`.

       - Uses `isThreeLine: true` to allow three lines of text.

       - Includes a trailing `Icon`.

## Key Points

- The **ListTile widget** is highly versatile for building list-based UIs.

- `leading` and `trailing` slots allow adding icons, logos, or other widgets.

- `dense` reduces the vertical padding for compact lists.

- `subtitle` enables multi-line tiles, and `isThreeLine` allows for three lines of text.

- Wrapping `ListTile` in a `Card` provides elevation and separation between items.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
