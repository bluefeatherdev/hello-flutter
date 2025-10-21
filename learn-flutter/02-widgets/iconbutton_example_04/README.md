# iconbutton_example_04

This Flutter application demonstrates the different **types of IconButton widgets** available in Material 3: standard, filled, filled tonal, and outlined.

## Structure

- **IconButtonExampleApp**

  - Root widget with `MaterialApp`.
  
  - Applies a `ThemeData` with a seeded color scheme (`Color(0xff6750a4)`).
  - Sets the home to a `Scaffold` containing:
  
    - An `AppBar` titled *IconButton Sample 04*.
    
    - The `ButtonTypesExample` as the body.

- **ButtonTypesExample**

  - A `StatelessWidget` that arranges two groups of buttons in a `Row`:
  
    - One group with **enabled** buttons.
    
    - One group with **disabled** buttons.
  - Uses `Spacer` widgets to center the groups horizontally.

- **ButtonTypesGroup**

  - A `StatelessWidget` that receives a `bool enabled`.
  
  - Defines `onPressed` as a callback if enabled, or `null` if disabled.
  - Builds a `Column` with four variations of `IconButton`:
  
    - **Standard IconButton**
    
    - **Filled IconButton** (`IconButton.filled`)
    - **Filled Tonal IconButton** (`IconButton.filledTonal`)
    - **Outlined IconButton** (`IconButton.outlined`)

## Key Points

- Demonstrates the **four Material 3 styles** of `IconButton`.

- Shows the difference between **enabled** and **disabled** states.
- Uses `Spacer` to align groups symmetrically in the row.
- Useful for comparing **visual styles** and **interaction states** of icon buttons in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
