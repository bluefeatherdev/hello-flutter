# listview_example_04

This Flutter application demonstrates a comparison between the `ListView` widget and the more flexible `CustomScrollView` with `SliverList`. Both approaches are shown side by side within a `Column`, each wrapped in an `Expanded` widget to share the available vertical space.

- The first half of the screen uses a `ListView` with the default constructor:
  - A `padding` of `EdgeInsets.all(20.0)`.

  - A static list of `Text` widgets as children.
  - The `ListView` expands to fill the space provided by its `Expanded` parent.

- The second half of the screen uses a `CustomScrollView`:
  - A `SliverPadding` provides spacing around the content.

  - A `SliverList` with a `SliverChildListDelegate` builds the same set of `Text` widgets.
  - This demonstrates how `CustomScrollView` can replicate `ListView` behavior while allowing more complex scrollable layouts (e.g., combining lists, grids, and slivers).

- A `SizedBox` of height `20` separates the two scrollable sections for clarity.

This project highlights the relationship between `ListView` and `CustomScrollView`, showing that a `ListView` is essentially a specialized `CustomScrollView` with a single `SliverList`. Using `CustomScrollView` directly provides more flexibility for advanced layouts.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
