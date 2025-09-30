# row_example_03

This Flutter application demonstrates how to fix overflow issues in a `Row` by using the `Expanded` widget. The example builds on the previous overflow case, showing how `Expanded` constrains the `Text` widget to fit within the available horizontal space, allowing it to wrap across multiple lines instead of overflowing.

- A `Row` with three children: a `FlutterLogo`, a long `Text` widget, and an `Icon`.

- The `Text` widget is wrapped in an `Expanded` widget, ensuring it takes up the remaining space without causing overflow.

- Automatic text wrapping within the allocated space.

- A simple, centered layout inside a `Scaffold` for clarity.

This project highlights the importance of `Expanded` (and `Flexible`) in Flutter’s layout system to manage space distribution and prevent overflow in horizontal layouts.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
