# listenablebuilder_example_03

This Flutter application demonstrates **using ListenableBuilder with FocusNode** to react to focus changes in a widget subtree.  
It shows how a custom container (`FocusListenerContainer`) can update its border and background color when any of its descendant widgets gain focus.

## Structure

- **FocusListenerContainer**  

  A `StatefulWidget` that listens to a `FocusNode`.  

  Wraps a child subtree and updates its decoration when focus changes.  

  - `border` → default border when not focused.  
  
  - `focusedSide` → border side applied when focused.  
  
  - `focusedColor` → background color applied when focused. 
   
  - `padding` → optional padding inside the container.  
  

  Uses `ListenableBuilder` to rebuild only the container when the focus state changes.  

- **MyField**  

  A `StatefulWidget` with a `TextField` and label.  

  Demonstrates how focus events inside the subtree trigger updates in `FocusListenerContainer`.  

- **ListenableBuilderExample**  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing form-like fields.  

  Includes a `FocusListenerContainer` wrapping multiple `MyField` widgets to show dynamic border and background changes.  

## Key Points

- **FocusNode** is a `Listenable`, so it can be used directly with `ListenableBuilder`.  

- **ListenableBuilder** rebuilds only the container when focus changes, improving efficiency.  

- The border and background color change dynamically when any descendant widget (like a `TextField`) gains focus.  

- This pattern is useful for **form UIs** or **interactive components** where visual feedback is needed on focus.  

## Example Workflow

1. Launch the app → `Company` and `Owner` fields are displayed.  

2. Tap inside the **First Name** or **Last Name** field → the `FocusListenerContainer` updates its border and background color.  

3. Tap outside or switch focus → the container returns to its default style.  

4. The app demonstrates how `ListenableBuilder` can be used with `FocusNode` for reactive UI feedback.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
