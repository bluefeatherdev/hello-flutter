# filledbutton_example_01

This Flutter application demonstrates **handling user input with FilledButton** to show enabled and disabled states.  
It also includes the **tonal variant** of FilledButton, styled with a custom `ColorSchemeSeed`.

## Structure

- **FilledButtonApp**  

  Root widget with `MaterialApp`.  

  Applies a theme using `ThemeData(colorSchemeSeed: const Color(0xff6750a4))`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- **Scaffold UI**  

  - **AppBar** → displays the title `"FilledButton Sample"`.  

  - **Body** → centered `Row` with two `Column` widgets:  


    - **Column 1: Filled Buttons**  

      - Enabled FilledButton → responds to `onPressed`.  

      - Disabled FilledButton → `onPressed: null`.  

    - **Column 2: Filled Tonal Buttons** 

      - Enabled FilledButton.tonal → responds to `onPressed`.

      - Disabled FilledButton.tonal → `onPressed: null`.  

## Key Points

- **FilledButton** is a Material Design button with filled background.  

- **FilledButton.tonal** provides a softer tonal variant.  

- Buttons can be **enabled** (with `onPressed` callback) or **disabled** (with `onPressed: null`).  

- `ThemeData.colorSchemeSeed` generates a color scheme used by the buttons.  

- This example is useful for **learning button states and styling** in Flutter.  

## Example Workflow

1. Launch the app → `FilledButton Sample` screen is displayed.  

2. The left column shows **Filled buttons**: one enabled, one disabled.  

3. The right column shows **Filled tonal buttons**: one enabled, one disabled.  

4. Pressing the enabled buttons triggers their `onPressed` callback (currently empty).  

5. Disabled buttons are non-interactive and styled accordingly.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
