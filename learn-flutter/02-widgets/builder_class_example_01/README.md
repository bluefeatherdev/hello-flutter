# builder_example_01

This Flutter application demonstrates the use of the **Builder widget** to obtain a new `BuildContext` that is a descendant of a `Scaffold`. This allows access to methods like `Scaffold.of(context)` that would otherwise fail if called from a context not under a `Scaffold`.

## Structure

- **BuilderExampleApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to `BuilderExample`.

- **BuilderExample**

  - A `StatelessWidget` that builds a `Scaffold` with:
  
    - An `AppBar` titled *Builder Sample 01*.
    
    - A `body` containing a `Builder`.

- **Builder**

  - Provides a new `BuildContext` inside the `Scaffold`.
  
  - Returns a `Center` widget with a `TextButton`.
  - The `TextButton`’s `onPressed` callback calls:
    ```dart
    print(Scaffold.of(context).hasAppBar);
    ```
    which checks if the current `Scaffold` has an `AppBar`.

## Key Points

- The **Builder widget** is useful when you need a `BuildContext` that is a descendant of a specific widget (like `Scaffold`).

- Without `Builder`, calling `Scaffold.of(context)` directly in the widget tree above the `Scaffold` would throw an error.
- This example shows how to properly access `Scaffold` properties and methods from within its descendant context.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
