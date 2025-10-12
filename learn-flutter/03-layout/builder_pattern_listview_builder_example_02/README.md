# builder_pattern_listview_builder_example_02

This Flutter application demonstrates how to use the **`ListView.builder` constructor** together with **`FutureBuilder`** to render a list of items fetched asynchronously. It extends the previous example by adding **alternating background colors** to the list items, making the UI more visually distinct.

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
  - Each row is wrapped in a `Container` with:

    - Alternating background color (`grey.shade100` for even indices, transparent for odd).

    - Padding for spacing.
  - Each row displays:
  
    - The task description on the left.

    - An icon on the right:

      - ✅ `Icons.check_circle` (green) if complete.

      - ❌ `Icons.cancel` (deep orange) if incomplete.

### Key points:

- Demonstrates the **builder pattern** with `ListView.builder` and `FutureBuilder`.

- Adds **conditional styling** (alternating row colors) based on the index.
- Simulates a real-world scenario where data comes from an API or database.
- Improves readability and user experience with subtle background color alternation.

This project illustrates how to combine **async data fetching**, **lazy list building**, and **conditional styling** in Flutter.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
