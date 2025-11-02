# listtile_example_06

This Flutter application demonstrates the use of the **ListTile widget** with the `titleAlignment` property, allowing dynamic control of how the title and subtitle are aligned vertically relative to the leading and trailing widgets.

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `ListTileExample`.

- **ListTileExample**

  - A `StatefulWidget` that manages the `titleAlignment` state.

  - The UI consists of:

    - A `Scaffold` with an `AppBar` titled *ListTile Sample 06*.

    - A `Column` containing:

      - A `Divider`.

      - A `ListTile` with:

        - `leading`: A `Checkbox`.

        - `title`: `"Headline Text"`.

        - `subtitle`: A longer description explaining the default behavior of `titleAlignment`.

        - `trailing`: A `PopupMenuButton` that allows the user to select a `ListTileTitleAlignment` value.

      - A `Divider`.

- **PopupMenuButton**

  - Provides options to change the `titleAlignment` dynamically:

    - `threeLine`

    - `titleHeight`

    - `top`

    - `center`

    - `bottom`

## Key Points

- The **titleAlignment** property controls how the `title` and `subtitle` are aligned vertically with respect to the leading and trailing widgets.

- By default:

  - If `ThemeData.useMaterial3` is `true`, the alignment defaults to `threeLine`.

  - Otherwise, it defaults to `titleHeight`.

- The **PopupMenuButton** demonstrates how to let users interactively change the alignment at runtime.

- This example is useful for understanding **Material 3 alignment behaviors** and customizing `ListTile` layouts.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
