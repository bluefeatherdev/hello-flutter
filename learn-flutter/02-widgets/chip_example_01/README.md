# chip_example_01

This Flutter application demonstrates handling user input with `Chip` by showing multiple chip widgets in a `Wrap` layout.  
It illustrates how to configure `Chip` with an `avatar` and `label`.

## Structure

- `ChipApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- Scaffold UI  

  - `AppBar` → displays the title `Chip Sample 01`  

  - Body → padded `Center` containing a `Wrap` with multiple `ChipExample` widgets  

- `ChipExample`  

  A `StatelessWidget` that builds a `Chip` with:  

  - An `avatar` using `CircleAvatar` with a grey background  

  - A `label` displaying the text `Jesús Domínguez`  

## Key Points

- `Chip` provides a Material Design widget representing complex information in a compact form  

- `avatar` allows adding an icon or image to the chip  

- `label` displays descriptive text inside the chip  

- `Wrap` arranges multiple chips with spacing for responsive layout  

- Useful for tags, categories, or compact information display in apps  

## Example Workflow

1. Launch the app → `Chip Sample 01` screen is displayed  

2. The UI shows multiple `Chip` widgets arranged in a `Wrap` layout  

3. Each chip displays an avatar and the label `Jesús Domínguez`  

4. The app demonstrates how to build and arrange multiple chips in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
