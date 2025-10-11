# scrolling_widgets_listview_example_01

This Flutter application demonstrates how to **make a list of widgets scrollable** using the `ListView` widget. Unlike `Column`, which lays out its children vertically but does not scroll by default, `ListView` automatically provides scrolling when its content exceeds the available screen space.

- The `ListViewApp` sets up a `Scaffold` with an `AppBar` and a body that contains:

  - A `ListView` widget with nine children.

- The `ListView` widget:
  - Accepts a `children` property, which is a list of widgets.
  
  - In this example, it contains nine instances of the custom `BorderedImage` widget.
  - Provides vertical scrolling automatically if the content is taller than the viewport.

- The `BorderedImage` widget:
  - Wraps an image of Dash (Flutter’s mascot).
  
  - Uses a `Container` with:
    - A light grey border (`Border.all`).
    
    - Rounded corners (`BorderRadius.circular`).
  - Clips the image with `ClipRRect` to respect the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to scale the image proportionally.

### Key points:

- `ListView` is one of the most common widgets for displaying scrollable content.

- It is similar to `Column`, but with built-in scrolling behavior.
- For large or dynamic lists, `ListView.builder` is preferred for performance, since it builds only the visible items.
- This example highlights the simplest use case: a static list of widgets inside a `ListView`.

This project illustrates the basics of creating scrollable layouts in Flutter with `ListView`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
