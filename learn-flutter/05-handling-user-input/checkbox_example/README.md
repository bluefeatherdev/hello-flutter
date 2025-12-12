# checkbox_example

This Flutter application demonstrates handling user input with `Checkbox` by toggling a boolean state.  
It illustrates how to configure `Checkbox` with custom colors and manage state updates.

## Structure

- `CheckboxApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- Scaffold UI  

  - `AppBar` → displays the title `Checkbox Sample`  

  - Body → centered `CheckboxExample` widget  

- `CheckboxExample`  

  A `StatefulWidget` that manages a boolean value `isChecked`.  

  - Defines a `bool` variable `isChecked` initialized to `false`  

  - Builds a `Checkbox` with:  

    - `checkColor` set to `Colors.white`  

    - `value` bound to `isChecked`  

    - `onChanged` callback updating the state when toggled  

## Key Points

- `Checkbox` provides a Material Design widget for binary input (checked or unchecked)  

- `checkColor` customizes the color of the check mark  

- `value` determines whether the checkbox is checked or not  

- `onChanged` updates the state when the user interacts with the checkbox  

- Useful for settings, preferences, or binary options in apps  

## Example Workflow

1. Launch the app → `Checkbox Sample` screen is displayed  

2. The UI shows a single `Checkbox`  

3. Tap the checkbox → toggles `isChecked` between `true` and `false`  

4. The check mark appears in white when selected  

5. The app demonstrates how to build and manage a checkbox in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
