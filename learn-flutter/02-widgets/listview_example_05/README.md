# listview_example_05

This Flutter application demonstrates how to use the `shrinkWrap` property with both `ListView` and `CustomScrollView` to allow them to size themselves based on their children rather than expanding to fill all available space.

- The layout is organized in a `Column` containing two scrollable widgets separated by a `SizedBox` of height `20`.

- The first scrollable section uses a `ListView`:
  - `shrinkWrap: true` ensures the `ListView` only occupies the vertical space required by its children.

  - `padding` is set to `EdgeInsets.all(20.0)`.
  - The children are a static list of `Text` widgets.

- The second scrollable section uses a `CustomScrollView`:
  - `shrinkWrap: true` is also applied here, so the scroll view adapts to the height of its slivers.

  - A `SliverPadding` provides spacing around the content.
  - A `SliverList` with a `SliverChildListDelegate` builds the same set of `Text` widgets.

- This example highlights the difference between scroll views that expand to fill available space (default behavior) and those that adapt to their content when `shrinkWrap` is enabled.

This project illustrates how `shrinkWrap` can be used to integrate scrollable widgets inside other layouts without forcing them to occupy the entire remaining space.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
