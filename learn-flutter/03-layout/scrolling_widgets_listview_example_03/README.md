# scrolling_widgets_listview_example_03

This Flutter application demonstrates how to **fetch data asynchronously and display it in a scrollable list** using `FutureBuilder` and `ListView.builder`.

- The `ToDo` class:
  - Represents a simple model with two fields:
  
    - `description` → a string describing the task.
    
    - `isComplete` → a boolean indicating whether the task is complete.

- The `Repository` class:

  - Provides a static async method `fetchTodos()` that simulates a network call with a delay (`Future.delayed`).
  
  - Returns a list of `ToDo` objects, some marked as complete and others incomplete.

- The `ListViewApp`:

  - Sets up a `Scaffold` with an `AppBar` and a body that uses `FutureBuilder<List<ToDo>>`.
  
  - `FutureBuilder` handles the different states of the async fetch:
    1. **Loading** → shows a `CircularProgressIndicator`.
    
    2. **Error** → displays the error message.
    3. **Data available** → builds a `ListView.builder` with the fetched items.
    4. **Empty** → shows a fallback message (`No ToDos found.`).

- The `ListView.builder`:

  - Uses `itemCount` to define the number of items.
  
  - Uses `itemBuilder` to build each row dynamically.
  - Each row displays:
    - The task description on the left.
    
    - An icon on the right:
      - ✅ `Icons.check_circle` (green) if complete.
      
      - ❌ `Icons.cancel` (deep orange) if incomplete.

### Key points:

- `FutureBuilder` is the standard way to handle **asynchronous data fetching** in Flutter.

- It rebuilds the UI automatically when the `Future` completes.
- `ListView.builder` ensures efficient rendering of potentially long lists.
- This example simulates a real-world scenario where data comes from an API or database.

This project illustrates how to combine **async data fetching** with **scrollable lists** in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
