# listview_example_02

This Flutter application demonstrates the use of the `ListView.builder` constructor to create a scrollable list of items dynamically. Unlike the default `ListView` constructor, which requires an explicit list of children, `ListView.builder` builds its children lazily and only when they are visible on screen.

- Two lists are defined at the top level:  
  - `entries` → a list of strings (`['A', 'B', 'C', 'D', 'E']`).  
  - `colorCodes` → a list of integers representing shades of `Colors.teal`.

- The `ListView.builder` uses the `itemCount` property to know how many items to build, and the `itemBuilder` callback to construct each `Container` dynamically.

- Each `Container` has a fixed height of `50` and a background color determined by `Colors.teal[colorCodes[index]]`.

- Inside each `Container`, a `Text` widget displays the corresponding entry (e.g., "Entry A", "Entry B").

- The `padding` property of the `ListView` is set to `EdgeInsets.all(8)`, ensuring consistent spacing around the scrollable list.

This project highlights the efficiency of `ListView.builder` for creating lists where items are generated on demand, making it suitable for larger or potentially infinite lists.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
