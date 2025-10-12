# flutter_application_12

This Flutter application demonstrates how to build a **multi-page app with navigation and custom UI examples**. It includes four main pages, each showcasing a different Flutter concept:

- **HomePage**
  - Serves as the entry point of the app.

  - Provides navigation buttons to the other pages (`AlertDialog`, `Stack`, `Painting`).
  - Includes a custom `DevSignature` widget in the bottom navigation bar.

- **AlertDialogPage**
  - Demonstrates how to display an `AlertDialog` with `TextButton` actions.

  - The dialog includes an **Accept** and **Cancel** button.
  - Triggered by pressing an `ElevatedButton`.

- **StackPage**
  - Demonstrates the use of the `Stack` widget with multiple `Positioned` containers.

  - Creates a layered effect with different shades of teal.

- **PaintingPage**
  - Demonstrates custom drawing with `CustomPainter`.

  - Uses `Path` and `quadraticBezierTo` to draw a figure.
  - Overlays a text widget (`I love you`) on top of the custom painting.

- **DevSignature**
  - A reusable widget displayed at the bottom of each page.

  - Uses `RichText` with a tappable link that opens the developer’s GitHub profile via `url_launcher`.

### Key points:

- Uses **`MaterialApp` with named routes** (`/home`, `/alert-dialog`, `/stack`, `/painting`).

- Demonstrates **navigation** with `Navigator.pushNamed`.
- Shows how to build **custom dialogs**, **stacked layouts**, and **custom painting**.
- Encapsulates developer signature in a reusable widget with external link support.

This project illustrates how to structure a Flutter app with multiple pages and showcase different UI techniques.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
