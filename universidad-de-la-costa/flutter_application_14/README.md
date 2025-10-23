# flutter_application_14

This Flutter application demonstrates a **Wellness Tracker** that manages user activities, tracks calories burned, and displays progress through a dashboard-like interface. It combines **forms, lists, cards, and modal bottom sheets** to create a small but complete fitness tracking app.

## Structure

- **WellnessTrackerApp**

  - Root widget with `MaterialApp`.

  - Sets the home to `WellnessTrackerExample`.

- **WellnessTrackerExample (StatefulWidget)**

  - Holds state for:

    - User profile data (weekly goals, fitness level).

    - Activity statistics (total activities, total calories).
    - Form fields for new activities.
  - Initializes with a predefined set of activities (`entries` map).
  - Provides `_updateStats()` to recalculate totals when activities are added or removed.

- **UI Layout**

  - **Profile Card**

    - Displays avatar, user name, weekly goals, fitness level, and a motivational quote.

  - **Stats Panel**

    - Two cards showing:

      - Total number of activities.

      - Total calories burned.
  - **Activity Log**

    - `ListView.builder` renders a list of activities from `entries`.

    - Each activity is displayed using `customActivityLogCard`.
    - Activities can be deleted with an `IconButton`.
  - **FloatingActionButton**

    - Opens a `showModalBottomSheet` with a form to add new activities.


- **Form (inside Modal Bottom Sheet)**

  - Uses a `Form` with validation and saving logic.

  - Fields:

    - Activity name (`TextFormField`)

    - Duration in minutes (`TextFormField`)
    - Calories burned (`TextFormField`)
    - Activity date (`TextFormField`)
    - Activity type (`DropdownButtonFormField`: Aerobic / Anaerobic)
  - On submit
  :
    - Validates inputs.

    - Saves values into `entries`.
    - Updates stats.
    - Closes the modal.

- **customActivityLogCard**

  - Displays activity details in a colored `Card`.

  - Color depends on activity type:

    - Aerobic → Blue.

    - Anaerobic → Deep Orange.
  - Shows name, duration, calories, date, and a delete button.

## Key Points

- Demonstrates integration of **forms with validation** inside a modal bottom sheet.

- Shows how to manage **dynamic lists** with add/remove functionality.
- Uses **cards and layout widgets** to create a dashboard-like UI.
- Illustrates **state management with setState** for updating totals and list items.
- Provides a **practical fitness tracker prototype** that can be extended with persistence or backend integration.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
