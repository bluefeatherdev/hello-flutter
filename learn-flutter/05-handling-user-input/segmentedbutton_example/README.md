# segmentedbutton_example

This Flutter application demonstrates handling user input with SegmentedButton by allowing users to select between multiple calendar views.  
It shows how to use ButtonSegment and manage selection state with a StatefulWidget.

## Structure

- SegmentedButtonApp  

  Root widget with MaterialApp.  

  Sets the home to a Scaffold containing the sample UI.  

- Scaffold UI  

  - AppBar → displays the title SegmentedButton Sample  
  - Body → centered SegmentedButtonExample widget  

- SegmentedButtonExample  

  A StatefulWidget that manages the selected calendar view.  

  - Defines an enum Calendar with values day, week, month, year 

  - Builds a SegmentedButton with segments for each Calendar option  
  - Uses selected to track the current choice  
  - Updates state with onSelectionChanged when user selects a segment  

## Key Points

- SegmentedButton provides a Material Design segmented control for multiple exclusive options 

- ButtonSegment defines each option with value, label, and icon  
- selected holds the current active segment in a Set  
- onSelectionChanged updates the state when a new segment is chosen  
- Useful for switching between views or modes in an app  

## Example Workflow

1. Launch the app → SegmentedButton Sample screen is displayed 

2. The segmented control shows Day, Week, Month, Year options  
3. Tap a segment → the selected option updates  
4. Only one segment can be active at a time  
5. The app demonstrates how to build segmented controls with Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
