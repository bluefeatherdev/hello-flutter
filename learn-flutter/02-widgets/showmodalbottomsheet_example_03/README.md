# showmodalbottomsheet_example_03

This Flutter application demonstrates the use of the **showModalBottomSheet** function with different **animation styles** using the `sheetAnimationStyle` parameter.

## Structure

- **ModalBottomSheetApp**

  - Root widget with `MaterialApp`.

  - Sets the home to a `Scaffold` containing:

    - An `AppBar` titled *showModalBottomSheet Sample 03*.

    - The `ModalBottomSheetExample` as the body.

- **AnimationStyles enum**

  - Defines three animation style options:

    - `defaultStyle` → uses the default animation (null).

    - `custom` → uses a custom `AnimationStyle` with 3s duration and 1s reverse duration.
    - `none` → disables animation (`AnimationStyle.noAnimation`).

- **ModalBottomSheetExample**

  - A `StatefulWidget` that manages the selected animation style.

  - Uses a `SegmentedButton` to let the user choose between the three styles.
  - Stores the current selection in `_animationStyleSelection` and `_animationStyle`.

- **showModalBottomSheet**

  - Triggered by an `ElevatedButton`.

  - Passes the selected `_animationStyle` to the `sheetAnimationStyle` parameter.
  - Displays a modal bottom sheet with:

    - A `SizedBox.expand` filling the screen.

    - A `Center` widget containing a `Column` with:

      - A `Text` widget: *Modal bottom sheet*.

      - An `ElevatedButton` to close the sheet via `Navigator.pop`.

## Key Points

- Demonstrates how to customize **bottom sheet animations** with `sheetAnimationStyle`.

- Shows three modes:

  - **Default** → system default animation.

  - **Custom** → developer-defined durations for enter/exit.
  - **None** → no animation.
- Uses `SegmentedButton` for interactive selection of animation style.
- Useful for experimenting with **user experience and motion design** in modal bottom sheets.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
