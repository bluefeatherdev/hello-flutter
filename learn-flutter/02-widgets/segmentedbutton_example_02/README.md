# segmentedbutton_example_02

This Flutter application demonstrates handling user input with `SegmentedButton` by customizing its style and showing a single choice example.  
It illustrates how to configure `ButtonSegment` options, manage selection state, and apply custom colors.

## Structure

- `SegmentedButtonApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- Scaffold UI  

  - `AppBar` → displays the title `SegmentedButton Sample 02`  

  - Body → centered `SegmentedButtonExample` widget  

- `SegmentedButtonExample`  

  A `StatefulWidget` that manages a single selected value from the `Calendar` enum.  

  - Defines enum `Calendar` with values `day`, `week`, `month`, `year`  

  - Builds a `SegmentedButton<Calendar>` with segments for each calendar option  

  - Applies custom style using `SegmentedButton.styleFrom` with background, foreground, and selected colors  

  - Uses `selected` to track the current choice  

  - Updates state with `onSelectionChanged` when user selects a segment  

## Key Points

- `SegmentedButton` provides a Material Design segmented control for single or multiple options  

- `ButtonSegment` defines each option with `value`, `label`, and optional `icon`  

- `SegmentedButton.styleFrom` allows customizing background and foreground colors for selected and unselected states  

- `selected` holds the current active segment in a `Set`  

- `onSelectionChanged` updates the state when a new selection is made  

- Useful for switching between views, modes, or categories with custom styling  

## Example Workflow

1. Launch the app → `SegmentedButton Sample 02` screen is displayed  

2. The UI shows a styled segmented control with options `Day`, `Week`, `Month`, `Year`  

3. The default selected option is `Week`  

4. Tap a segment → the selected option changes and updates the UI  

5. The app demonstrates how to build segmented controls with custom styles in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
