# using_listenables_valuenotifier

This Flutter application demonstrates **state management using ValueNotifier**.  
It shows how a `ValueNotifier` can hold a value and notify listeners when the value changes, allowing the UI to rebuild reactively.

## Structure

- **ValueNotifierApp**  

  Root widget with `MaterialApp`.  

  Sets the home to `CounterPage`.  

- **CounterPage**  

  A `StatefulWidget` that manages a `ValueNotifier<int>` instance.  

  Disposes the notifier in `dispose()` to free resources.  

  Uses a `ValueListenableBuilder` to rebuild the UI whenever the notifier updates.  

  Displays the current counter value and provides buttons to reset or increment.  

- **ValueNotifier<int> counterNotifier**  

  Holds the integer counter value.  

  Updating `counterNotifier.value` automatically triggers the `ValueListenableBuilder` to rebuild.  

## Key Points

- **ValueNotifier** is a lightweight way to manage state in Flutter.  

- It stores a single value and notifies listeners when the value changes.  

- `ValueListenableBuilder` connects the notifier to the UI, ensuring changes are reflected automatically.  

- Proper disposal of the notifier in `dispose()` prevents memory leaks.  

- This pattern is useful for **simple apps** or **isolated components** where a single value needs to be tracked reactively.  

## Example Workflow

1. Launch the app → `CounterPage` is displayed.  

2. Tap **Increment** → the counter increases and the UI updates automatically.  

3. Tap **Reset** → the counter resets to 0 and the UI reflects the change.  

4. The app demonstrates how `ValueNotifier` keeps state management simple and efficient.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
