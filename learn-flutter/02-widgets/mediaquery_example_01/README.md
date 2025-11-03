# mediaquery_example_01

This Flutter application demonstrates the use of the **MediaQuery widget** to access device and system information such as screen size, orientation, and text scaling. It shows how to adapt UI elements dynamically based on the current environment.

## Structure

- **MediaQueryApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `MediaQueryExample`.

- **MediaQueryExample**

  - A `StatelessWidget` that retrieves three key properties from `MediaQuery`:

    1. **Screen size** (`MediaQuery.sizeOf(context)`): Used to size a container relative to the device width.

    2. **Orientation** (`MediaQuery.orientationOf(context)`): Displays whether the device is in portrait or landscape mode.

    3. **Text scale factor** (`MediaQuery.textScalerOf(context)`): Adjusts text size according to system accessibility settings.

  - Layout:

    - A `Scaffold` with an `AppBar` titled *MediaQuery Sample 01*.

    - A `Center` containing a `Column` with:

      - A `Container` sized to 80% of the screen width, showing the current width in pixels.

      - A `Text` widget displaying the current orientation.

      - A `Text` widget demonstrating scaled text using the system’s text scale factor.

## Key Points

- **MediaQuery** provides access to device metrics and system preferences, enabling responsive and adaptive UI design.

- **Screen size** can be used to proportionally size widgets.

- **Orientation** detection allows layout adjustments for portrait vs. landscape.

- **Text scaling** ensures accessibility by respecting user preferences for larger or smaller text.

- This example is useful for learning how to make Flutter apps **responsive and accessible** across different devices and settings.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
