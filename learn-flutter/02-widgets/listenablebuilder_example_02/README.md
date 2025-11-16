# listenablebuilder_example_02

This Flutter application demonstrates **state management using ValueNotifier with ListenableBuilder**.  
It shows how `ListenableBuilder` rebuilds only the widgets that depend on a `ValueNotifier`, making updates efficient and localized.

## Structure

- **ListenableBuilderExample**  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing `CounterBody`.  

  Provides a `FloatingActionButton` that increments the counter value.  

- **_counter (ValueNotifier<int>)**  

  Holds the integer counter value.  

  Updating `counter.value` automatically triggers the `ListenableBuilder` to rebuild.  

- **CounterBody**  

  A `StatelessWidget` that receives the `ValueNotifier<int>` instance.  

  Displays a static text label.  

  Uses `ListenableBuilder` to rebuild only the widget showing the counter value when the notifier updates.  

## Key Points

- **ValueNotifier** is a lightweight way to manage state in Flutter.  

- **ListenableBuilder** listens to any `Listenable` (including `ValueNotifier`) and rebuilds efficiently.  

- Only the widget inside the builder is rebuilt when the notifier updates, improving performance.  

- The static text above the counter is not rebuilt, demonstrating selective updates.  

- This pattern is useful for **simple apps** or **isolated components** where reactive updates are needed.  

## Example Workflow

1. Launch the app → `CounterBody` is displayed with the current counter value.  

2. Tap the **FloatingActionButton** → the counter increases by 1.  

3. The `ListenableBuilder` rebuilds only the counter text, leaving other widgets unchanged.  

4. The app demonstrates efficient state management with `ValueNotifier` and `ListenableBuilder`.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
