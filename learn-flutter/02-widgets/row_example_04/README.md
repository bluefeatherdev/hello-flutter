# row_example_04

This Flutter application demonstrates how to use the `Row` widget with the `textDirection` property set to `TextDirection.rtl` (right-to-left). This reverses the order in which the children are displayed, starting from the right side of the screen instead of the left.

- A `Row` with three children: a `FlutterLogo`, a long `Text` widget, and an `Icon`.

- The `Text` widget is wrapped in an `Expanded` widget, ensuring it takes up the remaining space without causing overflow, and allowing the text to wrap across multiple lines.

- The `textDirection: TextDirection.rtl` property changes the layout order, so the `Icon` appears on the far left, the `Text` in the middle, and the `FlutterLogo` on the far right.

- A simple, centered layout inside a `Scaffold` for clarity.

This project highlights how the `textDirection` property can be used to control the horizontal order of children in a `Row`, which is especially useful for supporting right-to-left languages or for experimenting with layout direction.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
