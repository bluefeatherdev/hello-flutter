# layout_single_widget_center_example

This Flutter application demonstrates how to **lay out a single widget using the `Center` widget**. The `Center` widget positions its child in the middle of the available space, making it one of the simplest and most common layout tools in Flutter.

- The `CenterApp` sets up a `Scaffold` with an `AppBar` and a body that contains a `Center` widget.
- Inside the `Center`, a custom widget `BorderedImage` is displayed:
  - `BorderedImage` is a `StatelessWidget` that wraps an image of Dash (Flutter’s mascot).
  - It uses a `Container` with:
    - A light grey border (`Border.all`).
    - Rounded corners (`BorderRadius.circular`).
  - The image is clipped with `ClipRRect` to respect the rounded corners.
  - The image is loaded from the Flutter documentation assets via `Image.network`.
  - `fit: BoxFit.contain` ensures the image scales proportionally within the container.

### Key points:
- `Center` is ideal when you want to place a single widget in the middle of the screen.
- Custom widgets like `BorderedImage` encapsulate styling and layout logic, keeping the main UI code clean.
- This example highlights how to combine layout (`Center`), decoration (`Container`), and media (`Image`) in a simple yet reusable way.

This project illustrates the basics of Flutter layout with a single widget centered on the screen.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
