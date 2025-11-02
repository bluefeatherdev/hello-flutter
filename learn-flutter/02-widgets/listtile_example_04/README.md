# listtile_example_04

This Flutter application demonstrates different **ListTile layouts** with `leading`, `title`, `subtitle`, and `trailing` widgets, showing how text wrapping and the `isThreeLine` property affect vertical alignment.

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `ListTileExample`.

- **ListTileExample**

  - A `StatelessWidget` that builds a `Scaffold` with:

    - An `AppBar` titled *ListTile Sample 04*.

    - A `ListView` containing multiple `ListTile` widgets separated by `Divider`.

  - The `ListTile` variations include:

    1. **Basic ListTile**

       - `leading`: `CircleAvatar` with text `"A"`.

       - `title`: `"Headline"`.

       - `subtitle`: `"Supporting text"`.

       - `trailing`: `Icon(Icons.favorite_rounded)`.

    2. **ListTile with longer subtitle**

       - `leading`: `CircleAvatar` with text `"B"`.

       - `title`: `"Headline"`.

       - `subtitle`: Longer text to demonstrate wrapping.

       - `trailing`: `Icon(Icons.favorite_rounded)`.

       - Leading and trailing widgets remain vertically centered with the text.

    3. **Three-line ListTile**

       - `leading`: `CircleAvatar` with text `"C"`.

       - `title`: `"Headline"`.

       - `subtitle`: Longer text to demonstrate wrapping.

       - `trailing`: `Icon(Icons.favorite_rounded)`.

       - `isThreeLine: true` aligns leading and trailing widgets to the **top** instead of center.

## Key Points

- **ListTile** automatically adjusts layout depending on the presence of `subtitle` and the `isThreeLine` property.

- With a long `subtitle`, text wraps naturally, and leading/trailing widgets remain centered unless `isThreeLine` is set.

- Setting `isThreeLine: true` aligns leading and trailing widgets to the top, making the layout more consistent with multi-line text.

- `Divider` widgets are used to visually separate each `ListTile`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
