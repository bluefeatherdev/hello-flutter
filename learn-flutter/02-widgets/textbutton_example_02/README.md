# textbutton_example_02

This Flutter application demonstrates **using TextButton with selectable state** by integrating `WidgetStatesController` and `WidgetStateProperty`.  
It shows how a custom `SelectableButton` can toggle its selected state and update its foreground and background colors accordingly.

## Structure

- **SelectableButton**  

  A `StatefulWidget` wrapping `TextButton`.  

  - Accepts `selected`, `style`, `onPressed`, and `child`.  
  
  - Uses `WidgetStatesController` to manage the `selected` state.  
  - Updates the controller when the widget’s `selected` property changes.  

- **Home**  

  A `StatefulWidget` that manages a boolean `selected` flag.  

  - Defines a static `ButtonStyle` with `WidgetStateProperty` mappings:  
  
    - `foregroundColor` → white when selected.  
    
    - `backgroundColor` → indigo when selected.  
  - Toggles `selected` when the button is pressed.  
  
  - Displays the `SelectableButton` with the defined style.  

## Key Points

- **TextButton** can be customized with `WidgetStatesController` to reflect dynamic states.  

- **WidgetState.selected** allows styling based on selection state.  

- **WidgetStateProperty** maps specific states to style properties (foreground/background colors).  

- This pattern is useful for **toggle buttons**, **selection controls**, or **stateful UI components**.  

## Example Workflow

1. Launch the app → `TextButton Sample 02` screen is displayed.  

2. Tap the **toggle selected button** → the button toggles between selected and unselected states.  

3. When selected → button background turns indigo and text turns white.  

4. When unselected → button reverts to default styling.  

5. The app demonstrates how to build a reusable `SelectableButton` with custom state handling.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
