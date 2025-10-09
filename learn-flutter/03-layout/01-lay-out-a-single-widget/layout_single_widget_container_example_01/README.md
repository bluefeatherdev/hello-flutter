# layout_single_widget_container_example_01

This Flutter application demonstrates how to **lay out a single widget using the `Container` widget**. The `Container` is a versatile widget that can combine multiple responsibilities such as padding, margins, borders, background colors, and constraints.

- The `ContainerApp` sets up a `Scaffold` with an `AppBar` and a body that contains a `Container`.

- The `Container` applies:
  - `padding: EdgeInsets.all(16.0)` → adds uniform spacing around its child.

  - `child: BorderedImage()` → displays a custom widget inside.
- The `BorderedImage` widget:
  - Wraps an image of Dash (Flutter’s mascot).

  - Uses a `Container` with:
    - A light grey border (`Border.all`).
  
    - Rounded corners (`BorderRadius.circular`).
  - Clips the image with `ClipRRect` to respect the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to ensure the image scales proportionally within the container.

### Key points:
- `Container` is a convenience widget that can handle **layout (padding, margins, constraints)** and **decoration (borders, background, shapes)** in one place.
  
- This example highlights how to use `Container` to add padding around a single widget, compared to `Center` which only positions its child.
- By combining `Container` and custom widgets like `BorderedImage`, you can encapsulate styling and keep your UI code clean.

This project illustrates the basics of using `Container` for layout and decoration in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
