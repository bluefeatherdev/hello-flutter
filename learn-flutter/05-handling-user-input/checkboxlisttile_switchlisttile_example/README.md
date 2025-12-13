# checkboxlisttile_switchlisttile_example

This Flutter application demonstrates handling user input with `CheckboxListTile` and `SwitchListTile`.  
It illustrates how to configure these widgets with icons, labels, and manage state updates.

## Structure

- `CheckboxSwitchListTileApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- Scaffold UI  

  - `AppBar` → displays the title `CheckboxListTile & SwitchListTile Sample`  

  - Body → centered `CheckboxSwitchListTileExample` widget  

- `CheckboxSwitchListTileExample`  

  A `StatefulWidget` that manages two state variables:  

  - `timeDilation` (double) initialized to `1.0`  

  - `_lights` (bool) initialized to `false`  

  - Builds a `Column` with:  

    - `CheckboxListTile` → toggles `timeDilation` between `1.0` and `10.0`  

    - `SwitchListTile` → toggles `_lights` between `true` and `false`  

    - Both tiles include secondary icons (`Icons.hourglass_empty` and `Icons.lightbulb_outline`)  

## Key Points

- `CheckboxListTile` combines a `Checkbox` with a `ListTile` for labeled binary input  

- `SwitchListTile` combines a `Switch` with a `ListTile` for labeled binary input  

- `secondary` allows adding an icon to the tile  

- `onChanged` updates the state when the user interacts with the tile  

- Useful for settings, preferences, or binary options with descriptive labels and icons  

## Example Workflow

1. Launch the app → `CheckboxListTile & SwitchListTile Sample` screen is displayed  

2. The UI shows two tiles: `Animate Slowly` and `Lights`  

3. Tap the checkbox tile → toggles `timeDilation` between `1.0` and `10.0`  

4. Toggle the switch tile → updates `_lights` between `true` and `false`  

5. The app demonstrates how to build and manage labeled binary input tiles in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
