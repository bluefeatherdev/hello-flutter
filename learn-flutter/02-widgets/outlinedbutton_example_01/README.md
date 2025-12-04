# outlinedbutton_example

This Flutter application demonstrates **handling user input with OutlinedButton** to trigger actions and show feedback using `SnackBar`.  
It shows how pressing a button can display a message and provide an optional action.

## Structure

- **OutlinedButtonApp**  

  Root widget with `MaterialApp`.  

  Sets the home to `OutlinedButtonExample`.  

- **OutlinedButtonExample**  

  A `StatelessWidget` that builds a `Scaffold` with:  

  - **AppBar** → displays the title `"OutlinedButton Sample"`.  

  - **Body** → centered `OutlinedButton`.  

  - The button’s `onPressed` callback:  
    - Displays a `SnackBar` with the message `"Received click!"`.  
  
    - Includes a `SnackBarAction` labeled `"Action"` with an empty callback.  

## Key Points

- **OutlinedButton** is a Material Design button with a visible border and text label.  

- The `onPressed` callback defines the interactive behavior.  

- **ScaffoldMessenger** is used to show a `SnackBar` in response to user input.  

- `SnackBarAction` provides an optional secondary action inside the `SnackBar`.  

- This pattern is useful for **user feedback** and **interactive UI components**.  

## Example Workflow

1. Launch the app → `OutlinedButtonExample` is displayed.  

2. Tap the **Click me button** → a `SnackBar` appears at the bottom with the message `"Received click!"`.  

3. The `SnackBar` also shows an **Action button** that can be pressed (currently does nothing).  

4. The app demonstrates how `OutlinedButton` can be used to trigger feedback and actions.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
