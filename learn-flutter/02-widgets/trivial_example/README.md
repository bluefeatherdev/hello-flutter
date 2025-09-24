# trivial_example

This project is a simple Flutter app that demonstrates some **fundamental concepts** of Flutter development.

## ⚙️ How It Works

1. The app starts with `MyApp`, which builds the UI.
     
2. The button prints a message and increments the counter.  
3. The counter value is displayed by `CounterWidget`.  
4. `PaddedText` demonstrates widget composition and styling.

## 🎯 Concepts Learned

- `runApp()` launches the root widget.
 
- `MyApp` and `PaddedText` are StatelessWidget examples.  
  
- `CounterWidget` is a StatefulWidget that manages internal state.

- `MaterialApp` provides the app structure.
    
- `Scaffold` gives a basic page layout with an `AppBar` and `body`.

- Widgets are combined inside a `Column` to build the UI. 
   
- `Center`, `Text`, `SizedBox`, and `ElevatedButton` are used as building blocks.

- `ElevatedButton` uses the `onPressed` callback to handle user interaction.
  
- The button prints `"Click!"` to the console and also increments the counter.

- The `_incrementCounter()` method updates `_counter` using `setState()`. 
 
- This triggers a rebuild of the widget to display the new value.

- A `GlobalKey` is used to access the state of `CounterWidget` from outside.  

- This allows the button in `MyApp` to call `_incrementCounter()`.

- `PaddedText` shows how to create a reusable widget with padding.  

- `CounterWidget` encapsulates state and logic for counting.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
