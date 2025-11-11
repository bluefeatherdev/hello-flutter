# inheritedwidget_example_01

This Flutter application demonstrates how to use an **InheritedWidget** to propagate information down the widget tree.  
It shows both a correct usage and an incorrect usage to highlight how context works in Flutter.

## Structure

- **InheritedWidgetApp**  

  Root widget with `MaterialApp`.  

  Defines routes for `HomePage`, `MyPage`, and `MyOtherPage`.  

- **FrogColor (InheritedWidget)**  

  Custom `InheritedWidget` that holds a `Color`.  

  Provides two static methods:  
  - `maybeOf(BuildContext context)` → returns `FrogColor?`. 
   
  - `of(BuildContext context)` → returns `FrogColor` or asserts if not found.  

  Implements `updateShouldNotify` to notify dependents when the color changes.  

- **HomePage**  

  A `StatelessWidget` with two buttons.  

  Navigates to `MyPage` or `MyOtherPage` using named routes.  

- **MyPage**  

  Wraps its child with `FrogColor(color: Colors.teal)`.  

  Uses a `Builder` to obtain the correct descendant context.  

  Displays text styled with the inherited color.  

- **MyOtherPage**  

  Wraps its child with `FrogColor(color: Colors.teal)`.  

  Attempts to access `FrogColor.of(context)` directly, which fails because the context is not a descendant of `FrogColor`.  

## Key Points

- **InheritedWidget** allows data to flow down the widget tree efficiently.  

- The `of` and `maybeOf` methods are the conventional way to access inherited data.  

- The **context** used must be a descendant of the `InheritedWidget`.  

- Using a `Builder` ensures the correct context is available.  

- Attempting to access inherited data from a parent context (as in `MyOtherPage`) results in an error.  

## Example Workflow

1. Launch the app → `HomePage` is displayed.  

2. Tap **My Page** → navigates to `MyPage`, where the text color is correctly inherited from `FrogColor`.  

3. Tap **My Other Page** → navigates to `MyOtherPage`, where accessing `FrogColor.of(context)` fails because the context is not below the inherited widget.  

4. This demonstrates both correct and incorrect usage of **InheritedWidget**.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
