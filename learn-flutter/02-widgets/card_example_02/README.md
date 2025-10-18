# card_example_02

This Flutter application demonstrates the use of the **Card widget** combined with **InkWell** to create a tappable card with ripple effect.

## Structure

- **CardExampleApp**
  - Root widget with `MaterialApp` and `Scaffold`.
  
  - Displays an `AppBar` and the `CardExample` widget as the body.

- **CardExample**
  - Centers a `Card` widget on the screen.
  
  - The `Card` uses `clipBehavior: Clip.hardEdge` to ensure ripple effects are clipped to its shape.
  - Inside the `Card`:
    - An **InkWell** wraps the content to provide a splash effect and tap detection.
    
    - On tap, it prints a debug message (`Card tapped.`).
    - Contains a `SizedBox` with fixed width and height, displaying centered text.

## Key Points

- **Card widget** provides a Material Design container with elevation and rounded corners.

- **InkWell** adds interactivity with ripple effects when the card is tapped.
- **clipBehavior: Clip.hardEdge** ensures the ripple effect stays within the card’s boundaries.
- This example illustrates how to make a **Card interactive**, useful for dashboards, menus, or selectable items.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
