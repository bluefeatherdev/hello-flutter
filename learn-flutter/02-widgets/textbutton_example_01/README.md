# textbutton_example_01

This Flutter application demonstrates **comprehensive TextButton customization** with multiple styling techniques including state-dependent backgrounds, gradients, images, and custom foreground builders.  
It includes **dark mode and RTL text direction toggles** to showcase adaptive behavior.

## Structure

- **TextButtonApp**  

  Root stateful widget with `MaterialApp`.  
  Manages dark mode state and applies appropriate `ThemeMode`.  
  Uses separate `ThemeData` for light and dark themes.  
  Sets the home to a `Scaffold` containing the sample UI.

- **TextButtonExample**  

  Main demo widget displaying various TextButton configurations.  
  Receives dark mode state and update callback from parent.  
  Manages text direction (LTR/RTL) and scrolling for horizontal overflow.

- **Scaffold UI**  

  - **AppBar** → displays the title `"TextButton Sample 01"`.  
  
  - **Body** → horizontally scrollable layout with three sections: 
   
    - **Switches Card** → controls for dark mode and RTL text.  
    
    - **Column 1: Basic TextButtons**  
    
      - Enabled TextButton → standard button with callback.  
      
      - Disabled TextButton → `onPressed: null`.  
      - TextButton.icon #1 → button with icon and label.  
      - TextButton.icon #2 → custom foreground and background colors.  
      - TextButton #3 → custom shape with border.  
      - TextButton #4 → custom overlay color (splash/highlight).  
    - **Column 2: Advanced TextButtons**
      
      - TextButton #5 → gradient ShaderMask via `foregroundBuilder`. 
       
      - TextButton #6 → underline border on hover via `foregroundBuilder`.  
      - TextButton #7 → animated gradient background via `backgroundBuilder`.  
      - TextButton #8 → grass image background with Ink widget.  
      - TextButton #9 → state-dependent images with animated transitions.

## Key Points

- **TextButton** is a Material Design text button with no elevation.  

- **styleFrom()** convenience method creates `ButtonStyle` with common properties.  
- **foregroundBuilder** customizes the rendering of button content (text/icon).  
- **backgroundBuilder** customizes the rendering of button background.  
- **WidgetState** enum tracks button states (pressed, hovered, focused, disabled).  
- **Adaptive colors** switch between light and dark mode using `ColorScheme.brightness`.  
- **AnimatedContainer** provides smooth transitions between button states.  
- **Ink widget** ensures overlay effects (splash/highlight) remain visible over opaque backgrounds.  
- **BorderSide and shape** can be customized per state using `WidgetStateProperty`.  
- This example demonstrates **advanced Material Design button customization** techniques.

## Example Workflow

1. Launch the app → `TextButton Sample 01` screen is displayed.  

2. Toggle **Dark Mode** switch → theme changes between light and dark.  
3. Toggle **RTL Text** switch → text direction changes to right-to-left.  
4. Scroll horizontally to view all button examples.  
5. Hover over buttons to see state-dependent styling (desktop/web).  
6. Press buttons to see pressed states and animated transitions.  
7. TextButton #9 shows a running animation when pressed (1 second delay).  
8. Each button demonstrates different customization approaches using `styleFrom()`, `foregroundBuilder`, and `backgroundBuilder`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
