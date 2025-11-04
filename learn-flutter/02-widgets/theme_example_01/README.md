# theme_example_01

This Flutter application demonstrates how to define and apply a **global theme** using `ThemeData`. It shows how to customize colors, typography, and button styles, and how to access the current theme within widgets.

## Structure

- **ThemeApp**

  - Root widget with `MaterialApp`.

  - Defines a custom `ThemeData` that includes:

    - **Colors**: `primaryColor` and a `ColorScheme` generated from a seed color.

    - **Typography**: Custom `headlineLarge` and `bodyMedium` text styles.

    - **Button style**: A global `ElevatedButtonThemeData` with background, foreground, and text style.

  - Sets the home to the `ThemeExample`.

- **ThemeExample**

  - A `StatelessWidget` that retrieves the current theme with `Theme.of(context)`.

  - Layout:

    - A `Scaffold` with an `AppBar` titled *Theme Sample 01*.

    - A `Center` containing a `Column` with:

      - A `Text` styled with `headlineLarge`.

      - A `Text` styled with `bodyMedium`.

      - An `ElevatedButton` that uses the global button style and shows a `SnackBar` when pressed.

## Key Points

- **ThemeData** allows defining global styles for colors, text, and widgets.

- **ColorScheme.fromSeed** generates a consistent color palette from a single seed color.

- **TextTheme** provides reusable text styles across the app.

- **ElevatedButtonThemeData** applies a consistent style to all `ElevatedButton` widgets.

- Accessing the theme with `Theme.of(context)` ensures widgets adapt to the global theme.

- This example is useful for learning how to create **consistent, branded UI** across an entire Flutter app.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
