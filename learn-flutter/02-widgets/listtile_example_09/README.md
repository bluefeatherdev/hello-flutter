# listtile_example_09

This Flutter application demonstrates the use of the **ListTile widget** inside a `ListView.builder`, showing how to generate multiple tiles dynamically with a custom `leading` widget wrapped in a `GestureDetector`.

## Structure

- **ListTileApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `ListTileExample`.

- **ListTileExample**

  - A `StatelessWidget` that builds a `Scaffold` with:

    - An `AppBar` titled *ListTile Sample 09*.

    - A `ListView.builder` that generates 23 `ListTile` widgets.

- **ListTile configuration**

  - `leading`: A `GestureDetector` wrapping a `Container` of size **48 by 48** with padding and alignment.

    - Contains a `CircleAvatar` as the child.

    - Uses `HitTestBehavior.translucent` to ensure taps are detected even outside the visible area.

    - `onTap`: Currently defined as an empty callback, ready for custom interaction.

  - `title`: Displays `"title $index"`, where `$index` is the current item index.

  - `dense: false`: Uses the default vertical height for each tile.

## Key Points

- **ListView.builder** is efficient for creating large or dynamic lists, as it builds items lazily on demand.

- Wrapping the `leading` widget in a **GestureDetector** allows custom tap handling independent of the main `ListTile` tap area.

- The **48 by 48** container ensures consistent sizing for the leading widget, following Material Design guidelines.

- This example is useful for learning how to **combine ListTile with custom interactive leading widgets** inside a scrollable list.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
