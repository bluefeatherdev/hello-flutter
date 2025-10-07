# image_example_01

This Flutter application demonstrates the use of the `Image` widget to display an image from the internet using the `NetworkImage` provider.

- The `ImageApp` sets up a `Scaffold` with an `AppBar` and a centered `Image` widget in the body.

- The `Image` widget is constructed with:
  - `NetworkImage` → loads an image from a given URL.
  
  - In this example, the image is fetched from the Flutter API documentation assets (`owl.jpg`).
- The `Center` widget ensures the image is placed in the middle of the screen.

This project highlights the basics of displaying images in Flutter using the `Image` widget and the `NetworkImage` provider. Other constructors such as `Image.asset`, `Image.file`, and `Image.memory` can also be used to load images from different sources.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
