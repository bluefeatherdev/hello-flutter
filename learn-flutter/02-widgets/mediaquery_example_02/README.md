# mediaquery_example_02

This Flutter application demonstrates how to use **MediaQuery padding** to adapt layouts to safe areas such as notches, status bars, and system UI insets. It ensures that content is not obscured by system overlays by applying the safe area insets directly as padding.

## Structure

- **MediaQueryApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `MediaQueryExample`.

- **MediaQueryExample**

  - A `StatelessWidget` that retrieves the `padding` property from `MediaQuery.of(context)`.

  - Layout:

    - A `Scaffold` with an `AppBar` titled *MediaQuery Sample 02*.

    - The body is a `Container` with `padding` set to the safe area insets.

    - Inside the container, a `Column` displays:

      - The top, bottom, left, and right padding values in pixels.

      - A colored box that respects the safe area by using the retrieved padding.

## Key Points

- **MediaQuery.of(context).padding** returns the safe area insets of the device, ensuring that UI elements are not hidden behind system UI (status bar, navigation bar, or notches).

- Applying these values as `EdgeInsets` helps maintain a responsive and safe layout across devices.

- This example is useful for learning how to make Flutter apps **safe-area aware** without relying solely on the `SafeArea` widget.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
