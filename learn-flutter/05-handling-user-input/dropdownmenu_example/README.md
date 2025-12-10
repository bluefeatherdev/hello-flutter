# dropdownmenu_example

This Flutter application demonstrates handling user input with DropdownMenu by allowing users to select a color option.  
It shows how to use DropdownMenuEntry and manage selection state with a StatefulWidget.

## Structure

- DropdownMenuApp  

  Root widget with MaterialApp.  

  Sets the home to a Scaffold containing the sample UI.  

- Scaffold UI  

  - AppBar → displays the title DropdownMenu Sample  
  
  - Body → centered DropdownMenuExample widget  

- DropdownMenuExample  

  A StatefulWidget that manages the selected color.  

  - Defines an enum ColorLabel with values Blue, Pink, Green, Orange, Grey  
  
  - Builds a DropdownMenu with:  
  
    - initialSelection set to Green  
    
    - controller bound to a TextEditingController  
    - label set to Color  
    - onSelected updates the selectedColor state  
    - dropdownMenuEntries generated from ColorLabel.values with labels and styles  

## Key Points

- DropdownMenu provides a Material Design dropdown for selecting from multiple options  

- DropdownMenuEntry defines each option with value, label, and style  
- initialSelection sets the default selected option  
- onSelected updates the state when a new option is chosen  
- Useful for building forms or interactive UIs with selectable options  

## Example Workflow

1. Launch the app → DropdownMenu Sample screen is displayed  

2. The dropdown shows color options Blue, Pink, Green, Orange, Grey  
3. Tap the dropdown → select a color option  
4. Grey option is disabled and cannot be selected  
5. The app demonstrates how to build dropdown menus with Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
