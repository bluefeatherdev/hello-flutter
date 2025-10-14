# flutter_application_13

This Flutter application demonstrates how to build a **multi-page app** with navigation, combining two practical showcases:

- A **Fitness Tracker Page** with workout statistics and exercise cards.
  
- A **Developer Portfolio Page** with skills and professional experience.

## Structure

- **MainApp**
  - Defines routes for `/` (Home), `/fitness-tracker`, and `/developer-portfolio`.
  
  - Uses `MaterialApp` with named routes.

- **HomePage**
  - Entry point with navigation buttons to the Fitness Tracker and Developer Portfolio pages.

- **FitnessTrackerPage**
  - Displays a greeting header with avatar.
  

  - Shows statistics cards:
    - Finished workouts.
  
    - Workouts in process.
    - Time spent.
  - Section: Discover new workouts
    - Uses `ListView.builder` to render a list of exercises.
  
    - Each exercise is displayed with a **CustomTrackerCard**:
  
      - Name, repetitions, minutes, image, and background color.

- **DeveloperPortfolioPage**
  - Header:
  
    - Avatar, name, role, and a “Contact me” button.
  
    - Short bio paragraph.
  - Skills section:
  
    - Horizontal `ListView.builder` with `CustomSkillCard`.
  
    - Each card shows a logo and skill name.
  - Experience section:
  
    - Vertical `ListView.builder` with `CustomExperienceCard`.
  
    - Each card shows start year, role, and organization.

- **Custom Widgets**

  - **CustomTrackerCard**

    - Displays exercise details with styled background and image.
  - **CustomSkillCard**

    - Displays a skill logo and name.
  - **CustomExperienceCard**

    - Displays professional experience with year, role, and organization.

## Key Points

- Demonstrates **multi-page navigation** with named routes.

- Combines **UI for fitness tracking** and **developer portfolio** in one app.
- Uses **custom reusable widgets** for modularity.
- Integrates **ListView.builder** for dynamic lists (skills, experience, exercises).
- Showcases **layout composition** with `Row`, `Column`, `Expanded`, and `Container`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
