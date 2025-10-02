# column_example_02

This Flutter application demonstrates the use of the `Column` widget with customized alignment and sizing properties. It shows how multiple `Text` widgets can be arranged vertically, and how to apply a custom style to emphasize one of them.

- A `Column` with several `Text` widgets, each representing a line of text.

- The `crossAxisAlignment` is set to `CrossAxisAlignment.start`, aligning all children to the start of the horizontal axis.

- The `mainAxisSize` is set to `MainAxisSize.min`, so the `Column` only occupies the vertical space required by its children.

- The last `Text` widget ("Rochambeau!") uses `DefaultTextStyle.of(context).style.copyWith(fontSize: 32)` to inherit the default style and apply a larger font size.

- The layout is wrapped in a `Center` widget to place the `Column` in the middle of the screen, and a `Scaffold` with an `AppBar` provides the app structure.

This project highlights how `Column` can be customized with alignment and sizing options, and how `DefaultTextStyle` can be leveraged to modify text appearance contextually.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
