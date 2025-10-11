# scrolling_widgets_listview_example_02

This Flutter application demonstrates how to **display a dynamic list of items using `ListView.builder`**. Unlike a static `ListView` with predefined children, `ListView.builder` is more efficient for lists of unknown or large size because it builds only the widgets that are visible on screen.

- The `ListViewApp` sets up a `Scaffold` with an `AppBar` and a body that contains:

  - A `ListView.builder` widget that generates its children dynamically.

- The `ToDo` class:

  - Represents a simple model with two fields:
    - `description` → a string describing the task.
    
    - `isComplete` → a boolean indicating whether the task is complete.

- The `Repository` class:

  - Provides a static method `fetchTodos()` that returns a list of `ToDo` objects.
  
  - The list includes both completed and incomplete tasks.

- The `ListView.builder`:

  - Uses `itemCount` to define the number of items (`items.length`).
  - Uses `itemBuilder` to build each row on demand.
  
  - Each row is a `Row` widget with:
    - The task description on the left.
    
    - A status label (`Complete` or `Incomplete`) on the right.

- The `BorderedImage` widget (not used in this example’s main UI but included for consistency with other examples):

  - Displays an image of Dash with a border and rounded corners.
  
  - Demonstrates how to encapsulate styling and layout in a reusable widget.

### Key points:

- `ListView.builder` is preferred for **long or dynamic lists** because it lazily builds only what is needed.

- This example highlights how to bind a list of model objects (`ToDo`) to a scrollable UI.
- It shows how to conditionally render UI based on data (`Complete` vs. `Incomplete`).

This project illustrates how to use `ListView.builder` to efficiently render lists of data in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
