# statefulwidget_example_01

This Flutter application demonstrates the use of a **StatefulWidget** to build reusable UI components. It shows how each instance of a `StatefulWidget` maintains its own state and can be rendered multiple times in the same layout.

## Structure

- **StatefulWidgetApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `HomePage`.

- **HomePage**

  - A `StatelessWidget` that builds a `Scaffold` with an `AppBar` titled *StatefulWidget Sample 01*.

  - The body contains a `Column` with three instances of `TealContainer`.

- **TealContainer**

  - A `StatefulWidget` that creates the `_TealContainerState`.

- **_TealContainerState**

  - Builds a styled `Container` with:

    - Width set to 80% of the screen width.

    - Height set to one-fourth of 80% of the screen height.

    - Background color teal (`0xFF00897B`).

    - Rounded corners with `BorderRadius.circular(9)`.

    - A centered `Text` widget displaying *Teal Container StatefulWidget*.

## Key Points

- Each `TealContainer` is a separate `StatefulWidget` instance with its own `State` object.

- Using `MediaQuery` allows responsive sizing based on screen dimensions.

- This example is useful for learning how to create **reusable stateful components** in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
