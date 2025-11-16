# changenotifier_example_02

This Flutter application demonstrates **state management using ChangeNotifier with ListenableBuilder** applied to a dynamic list.  
It shows how a `ChangeNotifier` can notify listeners when a list changes, and how `ListenableBuilder` rebuilds only the widgets that depend on that state.

## Structure

- **ListModel (ChangeNotifier)**  

  Holds a private list of integers (`_values`).  

  Provides a getter `values` that returns a copy of the list (O(N)).  

  Defines `add(int value)` to insert a new integer and call `notifyListeners()`.  

- **ListenableBuilderExample**  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing `ListBody`.  

  Provides a `FloatingActionButton` that generates a random integer and adds it to the list.  

- **ListBody**  

  A `StatelessWidget` that receives the `ListModel` instance.  

  Displays a static text label.  

  Uses `ListenableBuilder` to rebuild the `ListView` whenever the list changes.  

  Renders each integer in the list as a `ListTile`.  

## Key Points

- **ChangeNotifier** allows reactive updates when the list changes.  

- **ListenableBuilder** rebuilds only the `ListView` when `notifyListeners()` is called, improving efficiency.  

- The `FloatingActionButton` triggers `add()`, which inserts a random integer into the list.  

- The getter `values` returns a copy of the list, ensuring immutability for consumers.  

- This pattern is useful for **collections of data** where updates need to be reflected in the UI.  

## Example Workflow

1. Launch the app → `ListBody` is displayed with an empty list.  

2. Tap the **FloatingActionButton** → a random integer is generated and added to the list.  

3. The `ListenableBuilder` rebuilds the `ListView`, showing the new integer.  

4. Repeat tapping → multiple integers are added and displayed dynamically.  

5. The app demonstrates efficient state management with `ChangeNotifier` and `ListenableBuilder` for lists.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
