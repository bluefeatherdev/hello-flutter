# slider_example

This Flutter application demonstrates handling user input with `Slider` by allowing users to adjust a numeric value interactively.  
It shows how to use `divisions`, `label`, and state management with a `StatefulWidget`.

## Structure

- `SliderApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- Scaffold UI  

  - `AppBar` → displays the title `Slider Sample`  

  - Body → centered `SliderExample` widget  

- `SliderExample`  

  A `StatefulWidget` that manages the current slider value.  

  - Defines a `double` variable `_currentVolume` initialized to `1`  

  - Builds a `Slider` with:  

    - `value` bound to `_currentVolume`  

    - `max` set to `5`  

    - `divisions` set to `5` for discrete steps  

    - `label` showing the current value as a string  

    - `onChanged` callback updating the state with the new value  

## Key Points

- `Slider` provides a Material Design widget for selecting a value from a range  

- `divisions` allow discrete steps instead of continuous values  

- `label` displays the current value above the slider thumb  

- `onChanged` updates the state when the slider is moved  

- Useful for settings like volume, brightness, or other adjustable parameters  

## Example Workflow

1. Launch the app → `Slider Sample` screen is displayed  

2. The slider appears with values ranging from `0` to `5`  

3. Drag the slider thumb → the `label` updates with the current value  

4. The slider snaps to discrete steps due to `divisions`  

5. The app demonstrates how to build interactive sliders with Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
