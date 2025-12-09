# chip_example

This Flutter application demonstrates handling user input with Chip by displaying labeled avatars in a flexible layout.  
It shows how to use Chip widgets inside a Wrap to create a responsive arrangement of multiple items.

## Structure

- ChipApp  

  Root widget with MaterialApp.  

  Sets the home to a Scaffold containing the sample UI.  

- Scaffold UI  

  - AppBar → displays the title Chip Sample  
  
  - Body → centered ChipExample widget  

- ChipExample  

  A StatefulWidget that builds a Wrap containing multiple Chip widgets.  

  - Each Chip has:  
  
    - avatar → CircleAvatar with an AssetImage (dash.png)  
    
    - label → descriptive text such as Chef Dash, Firefighter Dash, Musician Dash, Artist Dash  
  - Wrap arranges the chips with spacing and runSpacing for responsive layout  

## Key Points

- Chip is a Material Design widget representing complex information in a compact form
  
- Useful for tags, categories, or interactive elements with avatars and labels  
- Wrap provides responsive arrangement, automatically wrapping items to the next line  
- CircleAvatar allows embedding images or initials inside the Chip avatar  
- This example demonstrates how to build a set of labeled chips with images  

## Example Workflow

1. Launch the app → Chip Sample screen is displayed  

2. The Wrap arranges multiple Chip widgets horizontally with spacing  
3. Each Chip shows an avatar image and a label text  
4. The layout adapts responsively if the screen size changes  
5. The app demonstrates how to use Chip for compact labeled UI elements  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
