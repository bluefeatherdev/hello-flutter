# listview_example_06

This Flutter application demonstrates how to handle an **empty list state** when using `ListView.builder`. Instead of always showing a scrollable list, the UI conditionally displays either a `ListView` or a placeholder message.

- A top-level `entries` list is defined as empty (`[]`).

- Inside the `Scaffold` body, a conditional expression checks the state of `entries`:
  - If `entries.isNotEmpty`, a `ListView.builder` is used:
    - `itemCount` is set to the length of `entries`.
  
    - `itemBuilder` creates a `ListTile` for each entry, labeled as `"Item n"`.
  
  - If `entries` is empty, a `Center` widget displays the message `"No items"`.

- This pattern is a common approach in Flutter for handling empty collections, providing a user-friendly fallback UI instead of rendering an empty list.

This project highlights how to combine `ListView.builder` with conditional rendering to manage empty list states gracefully.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
