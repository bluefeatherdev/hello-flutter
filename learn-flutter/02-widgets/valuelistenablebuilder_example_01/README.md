# valuelistenablebuilder_example_01

This Flutter application demonstrates **using ValueListenableBuilder with ValueNotifier** to react to changes in a counter value.  
It shows how a widget subtree can rebuild efficiently when the notifier updates, while reusing expensive child widgets.

## Structure

- **ValueListenableBuilderApp**  

  Root widget with `MaterialApp`.  

  Sets the home to `ValueListenableBuilderExample`.  

- **ValueListenableBuilderExample**  

  A `StatefulWidget` that manages a `ValueNotifier<int>` counter.  

  - `_counter` → holds the integer value to be updated.  
  
  - `ValueListenableBuilder<int>` → listens to `_counter` and rebuilds only when the value changes.  
  - `child` → expensive widget (`FlutterLogo`) reused without rebuilding.  

- **CountDisplay**  

  A `StatelessWidget` that displays the current count inside a styled container.  

## Key Points

- **ValueNotifier** is a `Listenable`, so it can be used directly with `ValueListenableBuilder`.  

- **ValueListenableBuilder** rebuilds only the widgets that depend on the notifier’s value, improving efficiency.  

- The `child` parameter allows expensive widgets to be reused without unnecessary rebuilds.  

- This pattern is useful for **counters, reactive UI components, or lightweight state management**.  

## Example Workflow

1. Launch the app → `ValueListenableBuilderExample` is displayed.  

2. Tap the **FloatingActionButton** → `_counter` value increases by 1.  

3. `ValueListenableBuilder` rebuilds the `CountDisplay` widget with the new value.  

4. The `FlutterLogo` child remains unchanged, demonstrating efficient rebuilds.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
