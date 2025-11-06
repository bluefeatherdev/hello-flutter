# using_widget_constructors_dependency_injection

This Flutter application demonstrates how to use **widget constructors** to pass data into stateless widgets. It shows how multiple instances of a custom widget can reflect the same state value provided by a parent `StatefulWidget`.

## Structure

- **MyCounterApp**

  - Root widget with `MaterialApp`.

  - Contains a `Scaffold` with an `AppBar` titled *Widget Constructors Sample 01*.

  - Sets the body to the `MyCounterExample`.

- **MyCounter**

  - A `StatelessWidget` with a constructor that requires an integer `count`.

  - Displays the value of `count` in a styled `Text` widget.

- **MyCounterExample**

  - A `StatefulWidget` that creates the `_MyCounterExampleState`.

- **_MyCounterExampleState**

  - Holds an integer `count` initialized to 0.

  - Layout:

    - A `Column` with three `MyCounter` widgets, all receiving the same `count` value.

    - A `TextButton` labeled *Increment*.

    - When pressed, the button calls `setState` to increment `count`.

    - All `MyCounter` widgets rebuild automatically with the updated value.

## Key Points

- **Widget constructors** allow passing data into widgets, making them reusable and flexible.

- **StatelessWidget** can still display dynamic data if the parent provides updated values through its constructor.

- **StatefulWidget** manages the mutable state (`count`) and propagates it to child widgets.

- This example is useful for learning how to combine **state management** with **widget constructors** to build reusable components.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
