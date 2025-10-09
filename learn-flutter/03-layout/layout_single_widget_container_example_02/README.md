# layout_single_widget_container_example_02

This Flutter application demonstrates how to **lay out a single widget using both `Center` and `Container` together**. While `Center` positions its child in the middle of the available space, `Container` adds padding and decoration around the child.

- The `ContainerApp` sets up a `Scaffold` with an `AppBar` and a body that contains:
  - A `Center` widget → ensures the child is placed in the middle of the screen.

  - Inside the `Center`, a `Container` is used with:
    - `padding: EdgeInsets.all(16.0)` → adds uniform spacing around its child.
  
    - `child: BorderedImage()` → displays a custom widget.

- The `BorderedImage` widget:
  - Wraps an image of Dash (Flutter’s mascot).

  - Uses a `Container` with:
    - A light grey border (`Border.all`).
  
    - Rounded corners (`BorderRadius.circular`).
  - Clips the image with `ClipRRect` to respect the rounded corners.
  - Loads the image from the Flutter documentation assets via `Image.network`.
  - Uses `BoxFit.contain` to scale the image proportionally within the container.

### Key points:
- `Center` handles **positioning**.

- `Container` handles **padding and decoration**.
- Combining them allows you to both center a widget and style it with spacing and borders.
- This example builds on the previous one by showing how layout widgets can be composed for more control.

This project illustrates how to combine layout widgets (`Center` + `Container`) to achieve both alignment and decoration in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
