# statefulwidget_example_01

This Flutter application demonstrates the use of a **StatefulWidget** to manage ephemeral state. It shows how to increment a counter using `setState` and update the UI dynamically.

## Structure

- **MyCounterApp**

  - Root widget with `MaterialApp`.

  - Contains a `Scaffold` with an `AppBar` titled *StatefulWidget Sample 01*.

  - Sets the body to the `MyCounterExample`.

- **MyCounterExample**

  - A `StatefulWidget` that creates the `_MyCounterExampleState`.

- **_MyCounterExampleState**

  - Holds an integer `count` initialized to 0.

  - Provides the UI:

    - A `Text` widget displaying the current count.

    - A `TextButton` labeled *Increment*.

    - When pressed, the button calls `setState` to increment `count`.

    - The UI rebuilds automatically to reflect the new value.

## Key Points

- **StatefulWidget** is used when the UI depends on mutable state.

- The `State` object (`_MyCounterExampleState`) persists as long as the widget remains in the widget tree.

- **setState** triggers a rebuild, ensuring the UI reflects the updated state.

- This example is useful for learning the basics of **state management** in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
