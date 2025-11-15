# using_listenables_changenotifier

This Flutter application demonstrates **state management using ChangeNotifier**.  
It shows how a `ChangeNotifier` can be used to manage state and notify listeners when changes occur, allowing the UI to rebuild reactively.

## Structure

- **ChangeNotifierApp**  

  Root widget with `MaterialApp`.  

  Sets the home to `CounterPage`.  

- **CounterNotifier (ChangeNotifier)**  

  Holds a private counter (`_count`).  

  Provides a getter `count` to expose the value.  

  Defines two methods:  
  - `increment()` → increases the counter and calls `notifyListeners()`.  
  - `reset()` → resets the counter to 0 and calls `notifyListeners()`.  

- **CounterPage**  

  A `StatefulWidget` that creates and owns a `CounterNotifier` instance.  

  Disposes the notifier in `dispose()` to free resources.  

  Uses a `ListenableBuilder` to rebuild the UI whenever the notifier updates.  

  Displays the current counter value and provides buttons to reset or increment.  

## Key Points

- **ChangeNotifier** is a simple way to implement reactive state management in Flutter.  

- `notifyListeners()` triggers all widgets listening to rebuild with the updated state.  

- `ListenableBuilder` is used to connect the notifier to the UI, ensuring changes are reflected automatically.  

- Proper disposal of the notifier in `dispose()` prevents memory leaks.  

- This pattern is useful for **small to medium apps** where state changes need to be propagated efficiently.  

## Example Workflow

1. Launch the app → `CounterPage` is displayed.  

2. Tap **Increment** → the counter increases and the UI updates automatically.  

3. Tap **Reset** → the counter resets to 0 and the UI reflects the change.  

4. The app demonstrates how `ChangeNotifier` keeps state management clean and reactive.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
