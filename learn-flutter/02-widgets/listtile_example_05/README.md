# listtile_example_05

This Flutter application demonstrates the use of the **ListTile widget** with interactive properties such as `enabled`, `selected`, and dynamic styling using `WidgetStateColor`.

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `ListTileExample`.

- **ListTileExample**

  - A `StatefulWidget` that manages two boolean states:

    - `_enabled` controls whether the `ListTile` is interactive.

    - `_selected` toggles the selection state of the `ListTile`.

  - The UI consists of:

    - A `Scaffold` with an `AppBar` titled *ListTile Sample 05*.

    - A centered `ListTile` with:

      - `leading`: An `Icon(Icons.person)`.

      - `title`: `"Headline"`.

      - `subtitle`: Displays the current values of `_enabled` and `_selected`.

      - `trailing`: A `Switch` that toggles `_enabled`.

      - `onTap`: Toggles `_selected`.

      - `enabled`: Bound to `_enabled`.

      - `selected`: Bound to `_selected`.

      - `iconColor`: Defined with `WidgetStateColor.fromMap` to change color based on state:

        - Red when disabled.

        - Green when selected.

        - Black by default.

      - `textColor`: Defined with `WidgetStateColor.resolveWith` to mirror the same logic as `iconColor`.

## Key Points

- **enabled** determines whether the `ListTile` is interactive.

- **selected** highlights the `ListTile` and can be toggled by tapping.

- **WidgetStateColor** allows dynamic styling of icons and text depending on widget states.

- The `Switch` in the trailing position provides a convenient way to toggle the enabled state.

- This example is useful for understanding **stateful interactivity and dynamic styling** in `ListTile`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
