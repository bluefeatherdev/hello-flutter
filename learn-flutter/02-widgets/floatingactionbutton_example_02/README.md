# floating_action_button_example_02

This Flutter application demonstrates the different **FloatingActionButton (FAB) constructors** available in Flutter: small, regular, large, and extended.

## Structure

- **FloatingActionButtonApp**

  - Root widget with `MaterialApp`.
  
  - Sets the home to `FloatingActionButtonExample`.

- **FloatingActionButtonExample**

  - Stateless widget that builds a `Scaffold` with:
  
    - An `AppBar` titled *FloatingActionButton Sample 02*.
    
    - A `Center` widget containing a `Column` with four rows.
  - Each row demonstrates a different FAB type:
  
    - **FloatingActionButton.small**
    
      - Compact FAB with an add icon.
    - **FloatingActionButton** (regular)
      - Default FAB with an add icon.
    - **FloatingActionButton.large**
      - Larger FAB with an add icon.
    - **FloatingActionButton.extended**
      - Extended FAB with both an icon and a label ("Add").

## Key Points

- Demonstrates the **four main FAB constructors**:

  - `FloatingActionButton.small` → compact version.
  
  - `FloatingActionButton` → default size.
  - `FloatingActionButton.large` → larger version.
  - `FloatingActionButton.extended` → includes both icon and label.
- Useful for understanding **when to use different FAB sizes** depending on UI context.
- Highlights how FABs can adapt to different design needs in Material Design.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
