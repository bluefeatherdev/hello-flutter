# iconbutton_example_05

This Flutter application demonstrates the use of the **IconButton widget** with toggleable states (`isSelected` and `selectedIcon`) across different Material 3 styles: standard, filled, filled tonal, and outlined. It also shows how to render static (non-toggleable) buttons by setting `isSelected` to `null`.

## Structure

- **IconButtonExampleApp**

  - Root widget with `MaterialApp`.

  - Applies a `ThemeData` with a seeded color scheme (`Color(0xff6750a4)`).
  - Sets the home to a `Scaffold` containing:

    - An `AppBar` titled *IconButton Sample 05*.

    - The `DemoIconToggleButtons` as the body.

- **DemoIconToggleButtons**

  - A `StatefulWidget` that manages selection state for four types of icon buttons:

    - `standardSelected`

    - `filledSelected`
    - `tonalSelected`
    - `outlinedSelected`

- **_DemoIconToggleButtonsState**

  - Builds a `Column` with evenly spaced rows.

  - Each row contains **two IconButtons** of the same style:

    - The **first button** toggles its selection state using `setState` and updates `isSelected` (`true`/`false`).

    - The **second button** has `isSelected: null`, making it a **static preview** of the style without toggle behavior.
  - Each `IconButton` uses:

    - `icon` → default outlined settings icon.

    - `selectedIcon` → filled settings icon.
    - `isSelected` → bound to state for the first button, `null` for the second.

## Key Points

- Demonstrates how to use **`isSelected`** and **`selectedIcon`** to create toggleable icon buttons.

- Shows the four Material 3 styles of `IconButton`:

  - Standard

  - Filled
  - Filled Tonal
  - Outlined
- Illustrates how to manage **selection state** with `setState`.
- Highlights how setting `isSelected: null` creates a **non-toggleable, static button** useful for previews or disabled states.
- Useful for building **toggle controls** and **style showcases**.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
