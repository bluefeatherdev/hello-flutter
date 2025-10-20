# dropdownmenu_example_01

This Flutter application demonstrates the use of the **DropdownMenu widget** with custom entries, controllers, and selection handling.

## Structure

- **DropdownMenuExampleApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to a `Scaffold` containing an `AppBar` and the `DropdownMenuExample` body.

- **DropdownMenuExample (StatefulWidget)**

  - Manages two `TextEditingController` instances:
  
    - `colorController` for the color dropdown.
    
    - `iconController` for the icon dropdown.
  - Holds state for `selectedColor` and `selectedIcon`.

- **ColorLabel enum**

  - Defines color options (`blue`, `pink`, `green`, `yellow`, `grey`).
  
  - Each entry has a label and a `Color`.
  - Provides a static list of `DropdownMenuEntry<ColorLabel>` with custom styles and disabled state for "Grey".

- **IconLabel enum**

  - Defines icon options (`smile`, `cloud`, `brush`, `heart`).
  
  - Each entry has a label and an `IconData`.
  - Provides a static list of `DropdownMenuEntry<IconLabel>` with leading icons.

- **UI Layout**

  - `SafeArea` → ensures content avoids system intrusions.
  
  - `Column` with:
  
    - A horizontally scrollable `Row` containing:
    
      - **DropdownMenu<ColorLabel>**
      
        - Initial selection set to `ColorLabel.green`.
        
        - Uses `colorController`.
        - Updates `selectedColor` on selection.
      - **DropdownMenu<IconLabel>**
      
        - Uses `iconController`.
        
        - Filtering enabled (`enableFilter: true`).
        - Includes a leading search icon.
        - Updates `selectedIcon` on selection.
    - A conditional widget:
    
      - If both color and icon are selected → shows a `Row` with text and icon preview.
      
      - Otherwise → shows a prompt text.

## Key Points

- Demonstrates how to build **custom dropdown menus** with enums and `DropdownMenuEntry`.

- Shows how to **disable specific entries** (e.g., "Grey").
- Illustrates the use of **controllers** to manage dropdown state.
- Demonstrates **filterable dropdowns** with `enableFilter: true`.
- Combines two dropdowns and displays a **dynamic selection result**.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
