# elevatedbutton_example

This Flutter application demonstrates **handling user input with ElevatedButton** to update state in a `StatefulWidget`.  
It shows how pressing a button can increment a counter and rebuild the UI.

## Structure

- **ElevatedButtonApp**  

  Root widget with `MaterialApp`.  

  Sets the home to `ElevatedButtonExample`.  

- **ElevatedButtonExample**  

  A `StatefulWidget` that manages an integer counter.  

  - `count` → holds the current counter value.
    
  - `Text` → displays the current count.  
  - `ElevatedButton` → increments the counter when pressed.  
  - `setState()` → triggers a rebuild to update the UI.  

## Key Points

- **ElevatedButton** is a Material Design button with elevation and customizable style.  

- The `onPressed` callback updates the counter and calls `setState()` to refresh the UI.  

- `ElevatedButton.styleFrom()` allows styling, such as setting text size.  

- This pattern is useful for **basic interactivity** and **state management** in Flutter apps.  

## Example Workflow

1. Launch the app → `ElevatedButtonExample` is displayed.  

2. The screen shows the current count (`Your count: 0`).  

3. Tap the **Enabled button** → counter increases by 1.  

4. The `Text` widget updates to show the new count.  

5. Repeat → each press increments the counter and rebuilds the UI.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
