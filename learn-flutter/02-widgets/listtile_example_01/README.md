# listtile_example_01

This Flutter application demonstrates the use of the **ListTile widget** inside a `Material` container, placed over a colored background with padding.

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Sets the home to a `Scaffold` containing:

    - An `AppBar` titled *ListTile Sample 01*.

    - The `ListTileExample` as the body.

- **ListTileExample**

  - A `StatelessWidget` that builds a `Center` containing:

    - A `ColoredBox` with a teal background.

    - A `Padding` of 25 units around the child.

    - A `Material` widget wrapping a `ListTile`.

    - The `ListTile` has:

      - A `title` with the text `"ListTile with teal background"`.

      - A `tileColor` set to white.

## Key Points

- The **ListTile widget** provides a convenient way to create rows with text, icons, and other elements, commonly used in lists.

- Wrapping the `ListTile` in a `Material` ensures it inherits proper material styling and elevation behavior.

- The **ColoredBox** and **Padding** demonstrate how to style and position a `ListTile` within a custom background.

- This example is useful for understanding how to **embed a ListTile in styled containers** while preserving Material design principles.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
