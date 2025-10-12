# builder_pattern_listview_builder_example_01

This Flutter application demonstrates how to use the **`ListView.builder` constructor** together with **`FutureBuilder`** to render a list of items fetched asynchronously. It illustrates the **builder pattern** in Flutter, where widgets are built lazily on demand.

- **ToDo model**

  - Represents a task with two fields:
  
    - `description` → a string describing the task.
    
    - `isComplete` → a boolean indicating whether the task is complete.

- **Repository**

  - Provides a static async method `fetchTodos()` that simulates a network call with a delay.
  
  - Returns a list of `ToDo` objects, some marked as complete and others incomplete.

- **ListViewBuilderApp**

  - Wraps the app in a `MaterialApp` and `Scaffold`.
  
  - Uses `FutureBuilder<List<ToDo>>` to handle the asynchronous fetch:
  
    1. **Loading** → shows a `CircularProgressIndicator`.
    
    2. **Error** → displays the error message.
    3. **Data available** → builds a `ListView.builder` with the fetched items.
    4. **Empty** → shows a fallback message (`No ToDos found.`).

- **ListView.builder**

  - Uses `itemCount` to define the number of items.
  
  - Uses `itemBuilder` to build each row lazily.
  - Each row displays:
  
    - The task description on the left.
    
    - An icon on the right:
    
      - ✅ `Icons.check_circle` (green) if complete.
      
      - ❌ `Icons.cancel` (deep orange) if incomplete.

### Key points:

- `ListView.builder` is ideal for **long or dynamic lists**, as it only builds visible items.

- `FutureBuilder` integrates seamlessly with async data sources, rebuilding the UI when the `Future` completes.
- This example simulates a real-world scenario where data comes from an API or database.

This project illustrates how to combine **async data fetching** with the **builder pattern** in Flutter to create efficient, scrollable lists.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
