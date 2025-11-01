# stack_example_02

This Flutter application demonstrates the use of the **Stack widget** with a **foreground overlay** using gradients and text, layered on top of a background container.

## Structure

- **StackApp**

  - Root widget with `MaterialApp`.

  - Sets the home to a `Scaffold` containing:

    - An `AppBar` titled *Stack Sample 02*.

    - The `StackExample` as the body.

- **StackExample**

  - A `StatelessWidget` that builds a `Center` containing a fixed-size `SizedBox` (`250 x 250`).

  - Inside the `SizedBox`, a `Stack` is used with two children:

    1. A `Container` (`250 x 250`) with a white background.

    2. A `Container` with:

       - `padding: EdgeInsets.all(5.0)`.

       - `alignment: Alignment.bottomCenter`.

       - A `BoxDecoration` with a **vertical gradient** from transparent teal at the top to darker teal at the bottom.

       - A `Text` widget ("Foreground Text") styled in white, placed at the bottom center.

## Key Points

- The **Stack widget** allows overlaying widgets on top of each other.

- The **gradient decoration** creates a fade effect from transparent to solid color, making the text more readable against the background.

- The **alignment** ensures the text is positioned at the bottom center of the container.

- This example is useful for building **image overlays**, **cards with text on top of backgrounds**, or **UI elements with gradient fades**.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
