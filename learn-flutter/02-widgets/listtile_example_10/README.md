# listtile_example_10

This Flutter application demonstrates how to build a **custom list item layout** that mimics the behavior of a `ListTile` but provides more flexibility for complex designs. It shows how to combine `Row`, `Expanded`, and custom widgets to create a reusable component.

## Structure

- **CustomListItemApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `CustomListItemExample`.

- **CustomListItem**

  - A `StatelessWidget` that represents a single custom list item.

  - Accepts four parameters:

    - `thumbnail`: A widget displayed on the left.

    - `title`: The main text.

    - `user`: The author or channel name.

    - `viewCount`: The number of views.

  - Layout:

    - A `Row` with three children:

      1. `Expanded(flex: 2)`: Displays the thumbnail.

      2. `Expanded(flex: 3)`: Displays the `_VideoDescription`.

      3. A trailing `Icon(Icons.more_vert)`.

- **_VideoDescription**

  - A private `StatelessWidget` that displays:

    - `title` with bold styling.

    - `user` in smaller text.

    - `viewCount` formatted as `"X views"`.

  - Uses a `Column` with left alignment and spacing between text elements.

- **CustomListItemExample**

  - A `StatelessWidget` that builds a `Scaffold` with:

    - An `AppBar` titled *ListTile Sample 10 (Custom)*.

    - A `ListView` with padding and fixed `itemExtent` of 106.0.

    - Contains two `CustomListItem` examples with different thumbnails, titles, users, and view counts.

## Key Points

- **CustomListItem** demonstrates how to create reusable list components beyond the standard `ListTile`.

- Using **Expanded** with different `flex` values allows proportional space allocation between thumbnail and description.

- The **_VideoDescription** widget encapsulates text styling and layout, keeping the code modular and clean.

- This pattern is useful for building **media lists, video feeds, or custom catalog UIs** where `ListTile` alone is not sufficient.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
