# slider_example_01

This Flutter application demonstrates handling user input with `Slider` by showing both continuous and discrete slider examples.  
It illustrates how to configure `divisions`, `label`, and toggle styles using a `SwitchListTile`.

## Structure

- `SliderApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `SliderExample` widget.  

- `SliderExample`  

  A `StatefulWidget` that manages two slider values and a style toggle.  

  - Defines a `double` variable `_currentSliderValue` initialized to `20`  

  - Defines a `double` variable `_currentDiscreteSliderValue` initialized to `60`  

  - Defines a `bool` variable `year2023` initialized to `true`  

  - Builds a `Scaffold` with:  

    - `AppBar` → displays the title `Slider Sample 01`  

    - Body → centered `Column` with:  

      - A continuous `Slider` bound to `_currentSliderValue`  

      - A discrete `Slider` bound to `_currentDiscreteSliderValue` with `divisions` and `label`  

      - A `SwitchListTile` to toggle `year2023` style between latest M3 and year2023  

## Key Points

- `Slider` provides a Material Design widget for selecting a value from a range  

- Continuous slider allows free adjustment within the range  

- Discrete slider uses `divisions` to snap to fixed steps and shows a `label`  

- `SwitchListTile` toggles between different style modes (`year2023` vs latest M3)  

- Useful for demonstrating both continuous and discrete input handling with style switching  

## Example Workflow

1. Launch the app → `Slider Sample 01` screen is displayed  

2. The UI shows two sliders and a switch  

3. Drag the first slider → `_currentSliderValue` updates continuously  

4. Drag the second slider → `_currentDiscreteSliderValue` updates in discrete steps and shows a label  

5. Toggle the switch → changes between `year2023` style and latest M3 style  

6. The app demonstrates how to build sliders with continuous, discrete, and style toggle options in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
