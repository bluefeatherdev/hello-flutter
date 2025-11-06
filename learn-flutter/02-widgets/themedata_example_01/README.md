# themedata_example_01

This Flutter application demonstrates how to define and apply a **ThemeData** with a dynamic `ColorScheme` based on the system brightness. It also shows how to customize the `FloatingActionButton` style and use animated decorations with shapes.

## Structure

- **ThemeDataExampleApp**

  - Root widget with `MaterialApp`.

  - Defines a `ColorScheme` using `ColorScheme.fromSeed`:

    - The seed color is **indigo**.

    - The brightness is retrieved dynamically from `MediaQuery.platformBrightnessOf(context)`.

  - Applies the `ColorScheme` to the global `ThemeData`.

  - Customizes the `FloatingActionButtonThemeData` with `tertiary` and `onTertiary` colors.

  - Sets the home to the `Home` widget.

- **Home**

  - A `StatefulWidget` that tracks `buttonPressCount`.

  - Calculates `pointCount` as `8 + (buttonPressCount % 6)`.

  - Layout:

    - A `Scaffold` with an `AppBar` titled *ThemeData Sample 01*.

    - The body contains an `AnimatedContainer` with:

      - Margin and centered alignment.

      - A `ShapeDecoration` using `StarBorder`:

        - Number of points changes dynamically with `pointCount`.

        - Rounded points and valleys.

        - Border styled with `tertiary` color.

      - A `Text` widget showing the current number of points, styled with `headlineMedium` and adapted colors.

    - A `FloatingActionButton` that increments `buttonPressCount` and updates the shape when pressed.

## Key Points

- **ThemeData** allows defining global styles for colors and widgets.

- **ColorScheme.fromSeed** generates a consistent palette from a single seed color and adapts to system brightness.

- **FloatingActionButtonThemeData** applies a consistent style to all FABs.

- **AnimatedContainer** provides smooth transitions when the decoration changes.

- **StarBorder** demonstrates how to create custom shapes with dynamic properties.

- This example is useful for learning how to combine **ThemeData, ColorScheme, and animated shapes** for interactive UI design.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
