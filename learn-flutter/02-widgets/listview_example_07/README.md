# listview_example_07

This Flutter application demonstrates how to implement **item selection** in both a `ListView` and a `GridView`. It provides a toggle between list and grid modes, supports long-press to enable selection mode, and includes a "select all / unselect all" feature.

- The main widget is `ListTileSelectExample`, a `StatefulWidget` that manages:
  - `isSelectionMode` → whether selection mode is active.

  - `listLength` → the number of items (set to 30).
  - `_selected` → a list of booleans tracking the selection state of each item.
  - `_selectAll` → a flag to toggle all items at once.
  - `_isGridMode` → a flag to switch between list and grid display.

- The `AppBar` dynamically updates:
  - Shows a close button when in selection mode to reset selections.

  - Provides an icon button to toggle between list and grid views.
  - Displays a "select all / unselect all" button when in selection mode.

- The `body` conditionally renders:
  - `ListBuilder` → a `ListView.builder` that displays items as `ListTile`s with optional checkboxes when in selection mode.

  - `GridBuilder` → a `GridView.builder` that displays items as `GridTile`s with either an `Icon` or a `Checkbox` when in selection mode.

- Interaction:
  - **Tap** on an item toggles its selection if selection mode is active.

  - **Long press** on an item activates selection mode and selects that item.
  - **Select all / unselect all** updates the entire `_selected` list.

This project highlights how to extend `ListView` and `GridView` with custom selection logic, demonstrating state management, conditional UI, and user interaction patterns.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
