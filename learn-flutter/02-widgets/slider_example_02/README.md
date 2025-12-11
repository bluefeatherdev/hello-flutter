# slider_example_02

This Flutter application demonstrates handling user input with `Slider` by showing how to use `secondaryTrackValue` alongside a primary slider value.  
It illustrates how to configure multiple sliders, manage state, and display labels.

## Structure

- `SliderApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `SliderExample` widget.  

- `SliderExample`  

  A `StatefulWidget` that manages two slider values.  

  - Defines a `double` variable `_currentSliderPrimaryValue` initialized to `0.2`  

  - Defines a `double` variable `_currentSliderSecondaryValue` initialized to `0.5`  

  - Builds a `Scaffold` with:  

    - `AppBar` → displays the title `Slider Sample 02`  

    - Body → centered `Column` with:  

      - A `Slider` bound to `_currentSliderPrimaryValue` and showing `secondaryTrackValue` from `_currentSliderSecondaryValue`  

      - A `Slider` bound to `_currentSliderSecondaryValue`  

      - Both sliders display labels with their rounded values  

      - `onChanged` callbacks update the state when sliders are moved  

## Key Points

- `Slider` provides a Material Design widget for selecting a value from a range  

- `secondaryTrackValue` allows visualizing a secondary progress indicator on the slider track  

- Labels display the current slider values above the thumb  

- State is updated dynamically with `onChanged` callbacks  

- Useful for scenarios where a secondary reference or threshold needs to be displayed alongside the primary slider value  

## Example Workflow

1. Launch the app → `Slider Sample 02` screen is displayed  

2. The UI shows two sliders with labels  

3. Drag the first slider → `_currentSliderPrimaryValue` updates and the secondary track remains visible  

4. Drag the second slider → `_currentSliderSecondaryValue` updates and affects the secondary track of the first slider  

5. The app demonstrates how to build sliders with both primary and secondary track values in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
