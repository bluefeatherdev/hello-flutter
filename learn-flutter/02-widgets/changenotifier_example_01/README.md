# changenotifier_example_01

This Flutter application demonstrates **state management using ChangeNotifier with ListenableBuilder**.  
It shows how a `ChangeNotifier` can notify listeners when its state changes, and how `ListenableBuilder` rebuilds only the widgets that depend on that state.

## Structure

- **CounterModel (ChangeNotifier)**  

  Holds a private counter (`_count`).  

  Provides a getter `count` to expose the value.  

  Defines `increment()` to increase the counter and call `notifyListeners()`.  

- **ListenableBuilderExample**  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing `CounterBody`.  

  Provides a `FloatingActionButton` that calls `_counter.increment`.  

- **CounterBody**  

  A `StatelessWidget` that receives the `CounterModel` instance.  

  Displays a static text label.  

  Uses `ListenableBuilder` to rebuild only the widget showing the counter value when `notifyListeners()` is called.  

## Key Points

- **ChangeNotifier** is a simple way to manage state and notify listeners of changes.  

- **ListenableBuilder** rebuilds only the widgets that depend on the notifier, improving efficiency.  

- The `FloatingActionButton` triggers `increment()`, which updates the counter and notifies listeners.  

- The static text above the counter is not rebuilt, demonstrating selective updates.  

- This pattern is useful for **small apps** or **isolated components** where reactive updates are needed.  

## Example Workflow

1. Launch the app → `CounterBody` is displayed with the current counter value.  

2. Tap the **FloatingActionButton** → the counter increases by 1.  

3. The `ListenableBuilder` rebuilds only the counter text, leaving other widgets unchanged.  

4. The app demonstrates efficient state management with `ChangeNotifier` and `ListenableBuilder`.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
