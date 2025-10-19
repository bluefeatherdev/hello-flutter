# floating_action_button_example_01

This Flutter application demonstrates how to customize the **FloatingActionButton (FAB)** by changing its foreground color, background color, and shape dynamically.

## Structure

- **FloatingActionButtonApp**
  - Root widget with `MaterialApp`.
  
  - Sets the home to `FloatingActionButtonExample`.

- **FloatingActionButtonExample**
  - A `StatefulWidget` that manages the FAB’s customization state.
  
  - Uses a list of tuples `(foregroundColor, backgroundColor, shape)` to define different FAB styles.
  - The `index` variable cycles through the list of customizations each time the FAB is pressed.

- **_FloatingActionButtonExampleState**
  - Builds a `Scaffold` with:
    - An `AppBar` titled *FloatingActionButton Sample 01*.
  
    - A centered text prompting the user to press the button.
    - A `FloatingActionButton` configured with:
      - `onPressed` → updates the `index` to cycle through styles.

      - `foregroundColor`, `backgroundColor`, and `shape` → taken from the current customization.
      - An `Icon(Icons.navigation)` as its child.

## Key Points

- Demonstrates how to **customize the FloatingActionButton** with different colors and shapes.

- Shows how to use a **list of style configurations** and cycle through them with state updates.
- Uses **CircleBorder** to illustrate shape customization.
- Highlights the **dynamic styling** of FABs in Flutter, useful for interactive UI experimentation.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
