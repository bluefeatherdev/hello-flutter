# listtile_example_02

This Flutter application demonstrates advanced uses of the **ListTile widget** combined with animations such as **Hero transitions**, **FadeTransition**, and **SizeTransition**.

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Applies a `ThemeData` with a `ListTileThemeData` that sets the default text color to white.

  - Sets the home to the `ListTileExample`.

- **ListTileExample**

  - A `StatefulWidget` that manages two `AnimationController` instances:

    - `_fadeController` for the fade animation.

    - `_sizeController` for the size animation.

  - Creates corresponding `CurvedAnimation` objects:

    - `_fadeAnimation` with `Curves.easeInOut`.

    - `_sizeAnimation` with `Curves.easeOut`.

  - Disposes controllers properly in `dispose()`.

- **UI Layout**

  - A `Scaffold` with an `AppBar` titled *ListTile Sample 02*.

  - The body is a `Column` with three animated examples:

    1. **Hero Transition**

       - A `ListTile` wrapped in a `Hero` widget with tag `"ListTile-Hero"`.

       - On tap, navigates to a new screen with another `Hero`-wrapped `ListTile`.

       - Demonstrates smooth hero animations between routes.

    2. **FadeTransition**

       - A `ListTile` wrapped in a `FadeTransition` driven by `_fadeAnimation`.

       - The tile fades in and out continuously.

       - Uses `selectedTileColor` and `selectedColor` for styling.

    3. **SizeTransition**

       - A `ListTile` wrapped in a `SizeTransition` driven by `_sizeAnimation`.

       - The tile expands and contracts vertically.

       - Demonstrates animated resizing with custom padding.

## Key Points

- Wrapping a `ListTile` in a `Material` widget ensures it has a proper surface for drawing animated effects.

- **Hero animations** allow seamless transitions of widgets across routes.

- **FadeTransition** and **SizeTransition** show how to animate opacity and size with `AnimationController`.

- This example is useful for learning how to **combine ListTile with Flutter animations** to create interactive and dynamic UIs.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
