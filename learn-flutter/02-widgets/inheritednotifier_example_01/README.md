# inheritednotifier_example_01

This Flutter application demonstrates **using InheritedNotifier with AnimationController** to propagate animation values down the widget tree.  
It shows how multiple widgets can listen to the same notifier and rebuild efficiently when the animation updates.

## Structure

- **InheritedNotifierApp**  

  Root widget with `MaterialApp`.  

  Sets the home to `InheritedNotifierExample`.  

- **SpinModel**  

  Extends `InheritedNotifier<AnimationController>`.  

  Provides access to the animation value via `SpinModel.of(context)`.  

  Allows descendant widgets to rebuild when the `AnimationController` updates.  

- **Spinner**  

  A `StatelessWidget` that rotates a teal square based on the animation value.  

  Uses `Transform.rotate` with the angle derived from `SpinModel.of(context)`.  

- **InheritedNotifierExample**  

  A `StatefulWidget` that manages an `AnimationController`.  

  - `_controller` → repeats a 10-second animation indefinitely.  
  
  - Wraps child widgets with `SpinModel` to share the animation value.  
  - Displays three `Spinner` widgets side by side, all rotating in sync.  

## Key Points

- **InheritedNotifier** allows widgets to subscribe to changes in a `Listenable` (like `AnimationController`).  

- **SpinModel** provides a clean way to access the animation value across the widget tree.  

- Multiple `Spinner` widgets rebuild efficiently without needing individual controllers.  

- This pattern is useful for **coordinated animations** and **shared state propagation** in Flutter.  

## Example Workflow

1. Launch the app → three teal squares with "Whee!" text are displayed.  

2. The squares rotate continuously, driven by the shared `AnimationController`.  

3. All `Spinner` widgets stay in sync because they depend on the same `SpinModel`.  

4. The app demonstrates how `InheritedNotifier` can propagate animation values to multiple descendants.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
