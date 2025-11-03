# positioned_example_01

This Flutter application demonstrates the use of the **Positioned widget** inside a `Stack` to create layered, animated containers with dynamic colors. The example shows how to build concentric squares that change their color palette when tapped.

## Structure

- **PositionedApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `PositionedExample`.

- **PositionedExample**

  - A `StatefulWidget` that manages the `_currentPalette` state.

  - Contains a list of `MaterialColor` palettes (`_palettes`).

  - Provides a `_changeColors()` method to cycle through the palettes.

- **UI Layout**

  - A `Scaffold` with an `AppBar` titled *Positioned Sample 01*.

  - The body contains:

    - A `Center` with an `AspectRatio` of 1:1.

    - A `GestureDetector` that listens for taps to trigger `_changeColors()`.

    - A `Stack` with multiple `_customPositioned` widgets.

- **_customPositioned method**

  - Accepts `baseSize` and `color`.

  - Returns a `Positioned` widget with equal offsets (`top`, `right`, `bottom`, `left`) set to `baseSize`.

  - Contains an `AnimatedContainer` that smoothly transitions its color over 600 milliseconds with `Curves.easeInOut`.

## Key Points

- **Positioned** allows precise placement of widgets inside a `Stack`.

- Using equal offsets creates concentric squares that shrink inward.

- **AnimatedContainer** provides smooth transitions when the color changes.

- **GestureDetector** enables interactive color cycling by tapping the layout.

- This example is useful for learning how to combine **Stack, Positioned, and AnimatedContainer** for layered, animated UI effects.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
