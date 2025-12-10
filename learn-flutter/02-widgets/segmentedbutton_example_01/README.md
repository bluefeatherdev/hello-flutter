# segmentedbutton_example_01

This Flutter application demonstrates handling user input with `SegmentedButton` by showing both single choice and multiple choice examples.  
It illustrates how to configure `ButtonSegment` options, manage selection state, and enable multi-selection.

## Structure

- `SegmentedButtonApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- Scaffold UI  

  - `AppBar` → displays the title `SegmentedButton Sample 01`  

  - Body → centered `Column` with `SingleChoice` and `MultipleChoice` widgets  

- `SingleChoice`  

  A `StatefulWidget` that manages a single selected value from the `Calendar` enum.  

  - Defines enum `Calendar` with values `day`, `week`, `month`, `year`  

  - Builds a `SegmentedButton<Calendar>` with segments for each calendar option  

  - Uses `selected` to track the current choice  

  - Updates state with `onSelectionChanged` when user selects a segment  

- `MultipleChoice`  

  A `StatefulWidget` that manages multiple selected values from the `Sizes` enum.  

  - Defines enum `Sizes` with values `extraSmall`, `small`, `medium`, `large`, `extraLarge`  

  - Builds a `SegmentedButton<Sizes>` with segments for each size option  

  - Uses `selected` to track multiple choices in a `Set<Sizes>`  

  - Updates state with `onSelectionChanged` when user selects or deselects segments  

  - Enables multi-selection with `multiSelectionEnabled: true`  

## Key Points

- `SegmentedButton` provides a Material Design segmented control for single or multiple options  

- `ButtonSegment` defines each option with `value`, `label`, and optional `icon`  

- `selected` holds the current active segment(s) in a `Set`  

- `onSelectionChanged` updates the state when a new selection is made  

- Multi-selection can be enabled with `multiSelectionEnabled`  

- Useful for switching between views, modes, or categories in an app  

## Example Workflow

1. Launch the app → `SegmentedButton Sample 01` screen is displayed  

2. The UI shows two sections: `SingleChoice` and `MultipleChoice`  

3. In `SingleChoice`, tap a segment → only one option can be active at a time  

4. In `MultipleChoice`, tap segments → multiple options can be active simultaneously  

5. The app demonstrates how to build segmented controls with both single and multiple selections in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
