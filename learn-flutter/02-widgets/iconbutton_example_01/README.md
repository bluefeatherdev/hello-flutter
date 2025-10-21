# icon_button_example_01

This Flutter application demonstrates the use of the **IconButton widget** with a simple state update.

## Structure

- **IconButtonExampleApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to a `Scaffold` containing:
    - An `AppBar` titled *IconButton Sample 01*.
    
    - A `Center` widget with the `IconButtonExample`.

- **IconButtonExample**

  - A `StatefulWidget` that manages a `_volume` variable.

- **_IconButtonExampleState**

  - Builds a `Column` with:
  
    - An `IconButton`:
    
      - Displays the `Icons.volume_up` icon.
      
      - Has a tooltip: *Increase volume by 10*.
      - On press, increases `_volume` by 10 and calls `setState` to update the UI.
    - A `Text` widget showing the current volume value.

## Key Points

- **IconButton** is a clickable icon that triggers an action when pressed.

- Demonstrates how to use `setState` to update UI when the button is pressed.
- Shows how to add a **tooltip** for accessibility and better UX.
- Useful for actions that are best represented with icons (e.g., volume, play/pause, settings).

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
