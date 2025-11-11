# using_callbacks_example

This Flutter application demonstrates **state management using callbacks**.  
It shows how a child widget can notify its parent of state changes through a function reference, allowing the parent to update its own state accordingly.

## Structure

- **CallBacksApp**  

  Root widget with `MaterialApp`.  

  Sets the home to `CounterExample`.  

- **CounterExample**  

  A `StatefulWidget` that manages the parent counter (`parentCount`).  

  Defines `handleCounterChanged(int newValue)` to update the parent state when notified by the child.  

  Displays the parent count and includes the `MyCounter` child widget.  

- **MyCounter**  

  A `StatefulWidget` with its own local counter (`count`).  

  Accepts a `ValueChanged<int>` callback (`onChanged`) from the parent.  

  Provides two buttons:  

  - **Increment** → increases local count and notifies the parent.  

  - **Reset** → resets local count to 0 and notifies the parent.  

## Key Points

- **Callbacks** are a simple way to propagate changes from child to parent without complex state management solutions.  

- The parent (`CounterExample`) owns the main state (`parentCount`), while the child (`MyCounter`) manages its local state.  

- The child communicates changes upward by invoking the callback function passed from the parent.  

- This pattern is useful for **small apps** or **isolated components** where state needs to be shared between parent and child widgets.  

## Example Workflow

1. Tap **Increment** → local count increases, parent count updates via callback.  

2. Tap **Reset** → local count resets to 0, parent count also resets via callback.  

3. Both parent and child counters stay synchronized through the callback mechanism.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
