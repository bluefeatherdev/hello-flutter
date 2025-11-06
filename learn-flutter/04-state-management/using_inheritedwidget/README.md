# using_inheritedwidget

This Flutter application demonstrates how to use an **InheritedWidget** to share state and actions down the widget tree. It shows how to expose data and callbacks from a parent `StatefulWidget` and consume them in child widgets without explicitly passing them through constructors.

## Structure

- **InheritedWidgetApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `MyStateContainer`.

- **MyStateContainer**

  - A `StatefulWidget` that manages the counter state (`counter`).

  - Provides an `incrementCounter` method to update the state.

  - Wraps its child `Scaffold` with the custom `MyState` (an `InheritedWidget`).

- **MyState (InheritedWidget)**

  - Exposes two properties:

    - `data`: the current counter value.

    - `increment`: a callback to increment the counter.

  - Provides a static `of(context)` method to allow descendant widgets to access the nearest `MyState` instance.

  - Implements `updateShouldNotify` to trigger rebuilds when `data` changes.

- **HomeScreen**

  - A `StatelessWidget` that consumes the state via `MyState.of(context)`.

  - Displays the current counter value.

  - Provides a button to increment the counter using the inherited callback.

## Key Points

- **InheritedWidget** is a powerful way to propagate data and actions down the widget tree without passing them manually through constructors.

- **dependOnInheritedWidgetOfExactType** allows widgets to subscribe to updates when the inherited data changes.

- **updateShouldNotify** determines whether dependent widgets should rebuild.

- This example is useful for learning the basics of **state sharing** and is a foundation for more advanced state management solutions like `Provider`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
