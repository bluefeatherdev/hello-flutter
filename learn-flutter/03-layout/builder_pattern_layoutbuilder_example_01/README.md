# builder_pattern_layoutbuilder_example_01

This Flutter application demonstrates how to use the **`LayoutBuilder` widget** to create **adaptive layouts** that respond to the available screen width. It switches between a **mobile layout** and a **desktop layout** depending on the constraints.

- **LayoutBuilderApp**

  - Wraps the app in a `MaterialApp` and `Scaffold`.
  
  - Uses `LayoutBuilder` in the body to check the `BoxConstraints`.
  - If `maxWidth <= 600`, it shows the `MobileLayout`.
  - Otherwise, it shows the `DesktopLayout`.

- **MobileLayout**

  - Displays a vertical `ListView.builder` with 12 items.
  
  - Each item is a `BorderedImage`.

- **DesktopLayout**

  - Displays a `ListView.builder` with 4 rows.
  
  - Each row contains 3 `Expanded` widgets, each holding a `BorderedImage`.
  - This creates a grid-like layout for larger screens.

- **BorderedImage**

  - A reusable widget that displays an image of Dash with:
  
    - A light grey border.
    
    - Rounded corners (`BorderRadius.circular`).
    - Clipped image using `ClipRRect`.
  - Loads the image from the Flutter documentation assets via `Image.network`.

### Key points:

- `LayoutBuilder` provides the **constraints** of its parent, allowing responsive UI decisions.

- This example demonstrates **adaptive design**:
  - **Mobile** → single-column list.
  
  - **Desktop** → multi-column grid-like layout.
- Encapsulates styling in a reusable widget (`BorderedImage`).

This project illustrates how to use the **builder pattern** with `LayoutBuilder` to create responsive layouts in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
