# switch_example

This Flutter application demonstrates handling user input with `Switch` by toggling a boolean state.  
It illustrates how to configure `Switch` with custom colors and manage state updates.

## Structure

- `SwitchApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- Scaffold UI  

  - `AppBar` → displays the title `Switch Sample`  

  - Body → centered `SwitchExample` widget  

- `SwitchExample`  

  A `StatefulWidget` that manages a boolean value `light`.  

  - Defines a `bool` variable `light` initialized to `true`  

  - Builds a `Switch` with:  

    - `value` bound to `light`  

    - `activeThumbColor` set to `Colors.teal`  

    - `onChanged` callback updating the state when toggled  

## Key Points

- `Switch` provides a Material Design widget for binary input (on/off)  

- `value` determines whether the switch is active or inactive  

- `activeThumbColor` customizes the color of the switch thumb when active  

- `onChanged` updates the state when the user interacts with the switch  

- Useful for settings, preferences, or binary options in apps  

## Example Workflow

1. Launch the app → `Switch Sample` screen is displayed  

2. The UI shows a single `Switch`  

3. Toggle the switch → updates the `light` variable between `true` and `false`  

4. The thumb color changes to teal when active  

5. The app demonstrates how to build and manage a switch in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
