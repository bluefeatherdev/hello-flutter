# radio_example

This Flutter application demonstrates handling user input with `Radio` by selecting one option from a group.  
It illustrates how to configure `Radio` buttons with an enum and manage state updates.

## Structure

- `RadioApp`  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- Scaffold UI  

  - `AppBar` → displays the title `Radio Sample`  

  - Body → centered `RadioExample` widget  

- `RadioExample`  

  A `StatefulWidget` that manages a `Character` enum selection.  

  - Defines enum `Character` with values `musician`, `chef`, `firefighter`, `artist`  

  - Defines a variable `_character` initialized to `Character.musician`  

  - Provides a method `setCharacter` to update the selected value  

  - Builds a `Column` with multiple `ListTile` widgets, each containing a `Radio<Character>`  

  - `groupValue` ensures only one radio button is selected at a time  

  - `onChanged` updates the state when a radio button is tapped  

## Key Points

- `Radio` provides a Material Design widget for single-choice selection  

- `groupValue` binds all radio buttons to the same state variable  

- `value` represents the option associated with each radio button  

- `onChanged` updates the selected value when the user interacts  

- Useful for forms, surveys, or any scenario requiring exclusive selection  

## Example Workflow

1. Launch the app → `Radio Sample` screen is displayed  

2. The UI shows four options: Musician, Chef, Firefighter, Artist  

3. The default selected option is `Musician`  

4. Tap another option → updates `_character` and changes the selected radio button  

5. The app demonstrates how to build and manage radio buttons in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
