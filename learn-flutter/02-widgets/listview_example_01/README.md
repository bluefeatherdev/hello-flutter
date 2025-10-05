# listview_example_01

This Flutter application demonstrates the use of the `ListView` widget to create a scrollable list of items. Each item is represented by a `Container` with a background color and a `Text` widget centered inside.

- The `ListView` uses the default constructor with an explicit `List<Widget>` of children, making it suitable for a small, fixed number of items.

- Each `Container` has a fixed height of `50` and a different shade of `Colors.teal`, showing how background colors can vary across list items.

- The `Text` widgets use contrasting `TextStyle` colors (`Colors.tealAccent` variations) to ensure readability against their respective backgrounds.

- The `padding` property of the `ListView` is set to `EdgeInsets.all(8)`, adding consistent spacing around the list.

- The layout is wrapped in a `Center` widget, and the overall structure is provided by a `Scaffold` with an `AppBar`.

This project highlights the fundamentals of building a scrollable vertical list in Flutter using the `ListView` widget with static children.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
