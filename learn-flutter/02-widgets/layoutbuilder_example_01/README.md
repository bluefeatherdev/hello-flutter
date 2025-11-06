# layoutbuilder_example_01

This Flutter application demonstrates how to use the **LayoutBuilder widget** to build responsive layouts based on the available constraints. It shows how to adapt the UI depending on the maximum width of the parent container.

## Structure

- **LayoutBuilderApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `LayoutBuilderExample`.

- **LayoutBuilderExample**

  - A `StatelessWidget` that uses `LayoutBuilder` in the body of a `Scaffold`.

  - The `builder` provides `BoxConstraints` (`constraints`) that describe the available space.

  - Logic:

    - If `constraints.maxWidth > 600`, it calls `_buildNormalContainer()`.

    - Otherwise, it calls `_buildWideContainer()`.

- **_buildNormalContainer**

  - Returns a centered `Container` of size 100x100 with a blue background.

- **_buildWideContainer**

  - Returns a centered `Row` with two containers (100x100 each):

    - One teal-colored.

    - One grey-colored.

## Key Points

- **LayoutBuilder** provides the constraints of its parent, enabling responsive design.

- By checking `constraints.maxWidth`, the layout adapts to different screen sizes.

- This example demonstrates a simple conditional layout: a single container for wide screens, and two containers side by side for narrow screens.

- Useful for learning how to implement **responsive UI** in Flutter without relying on external packages.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
