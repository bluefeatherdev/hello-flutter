# statefulwidget_example_02

This Flutter application demonstrates how to use a **StatefulWidget** with internal state and widget properties. It shows how to combine constructor parameters with mutable state to create interactive and reusable components.

## Structure

- **StatefulWidgetApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `HomePage`.

- **HomePage**

  - A `StatelessWidget` that builds a `Scaffold` with an `AppBar` titled *StatefulWidget Sample 02*.

  - The body contains a single `TealContainer`.

- **TealContainer**

  - A `StatefulWidget` with two properties:

    - `color`: background color (default teal).

    - `child`: optional widget to display inside the container.

  - Creates the `_TealContainerState`.

- **_TealContainerState**

  - Holds a private `_size` variable initialized to 1.0.

  - Defines a `grow()` method that increments `_size` by 0.1 and calls `setState`.

  - Layout:

    - A `GestureDetector` wraps the container to detect taps.

    - On tap, the container grows in size using `Transform.scale`.

    - The container has fixed width and height (100x100), background color from `widget.color`, and optional child content.

## Key Points

- **StatefulWidget** can combine immutable constructor parameters with mutable state managed in its `State` class.

- **GestureDetector** enables user interaction by detecting taps.

- **Transform.scale** applies a scaling transformation based on the current state.

- This example is useful for learning how to build **interactive, reusable components** that respond to user input.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
