# listtile_example_08

This Flutter application demonstrates the use of the **ListTile widget** with conditional `subtitle`, dynamic `enabled` state, and interactive behavior controlled by a button that toggles between two states (Act I and Act II).

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `ListTileExample`.

- **ListTileExample**

  - A `StatefulWidget` that manages the `_act` state (initially set to 1).

  - Provides a `_toggleAct()` method to switch between Act I and Act II.

- **UI Layout**

  - A `Scaffold` with an `AppBar` titled *ListTile Sample 08*.

  - The body is a `Column` centered vertically, containing:

    1. **ListTile**

       - `leading`: An airplane icon (`Icons.flight_land`).

       - `title`: `"Trix's airplane"`.

       - `subtitle`: Displays different text depending on `_act`:

         - If `_act != 2`: `"The airplane is only in Act II."`.

         - If `_act == 2`: `"Airplane arriving"`.

       - `enabled`: Bound to `_act == 2`.

       - `onTap`: Prints a debug message and shows a `SnackBar` with the current act.

    2. **ElevatedButton**

       - Calls `_toggleAct()` when pressed.

       - Updates the label to show the current act.

## Key Points

- The **enabled** property disables the `ListTile` unless `_act == 2`.

- The **subtitle** changes dynamically based on the current act.

- The **SnackBar** provides immediate feedback when the tile is tapped.

- The **ElevatedButton** allows toggling between Act I and Act II, making it easy to test the behavior.

- This example is useful for learning how to **conditionally enable/disable ListTile** and update its content dynamically.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
