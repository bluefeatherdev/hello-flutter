# flutter_application_11

This Flutter application demonstrates how to build a **multi-page app with named routes, navigation, and reusable UI components**. It includes four main pages:

- **HomePage**
  - Displays three `ElevatedButton`s that navigate to the other pages using `Navigator.pushNamed`.
  
  - Includes a custom `DevSignature` widget in the bottom navigation bar.

- **HealthySnacksPage**
  - Shows a horizontal `ListView` of snack items (almonds, pistachios, cashews, hazelnuts, walnuts, pecans).
  
  - Each item is displayed in a custom container with:
    - Background color.
    
    - Image loaded from `assets/images/`.
    - Name and price labels.
  - Demonstrates how to build reusable UI with a helper method (`makeSnackContainer`).

- **TopicsPage**
  - Displays a horizontal `ListView` of technology topics (Flutter, Dart, Firebase, GitHub, CI/CD, AI).
  
  - Each topic is shown in a styled container with title and subtitle.
  - Uses a helper method (`makeTopicContainer`) for reusable UI.

- **TrendsPage**
  - Displays a vertical `ListView` of trend items.
  
  - Each item is rendered with a helper method (`makeTrendContainer`).
  - Layout includes:
    - Avatar and author info.
    
    - Post text (`Lorem ipsum...`).
    - Footer row with interactive `IconButton`s for likes and views.
  - Demonstrates combining `Row`, `Column`, `Expanded`, and `ListView` for a feed-like layout.

### Key points:

- Uses **`MaterialApp` with named routes** (`/home`, `/healthy-snacks`, `/topics`, `/trends`).

- Demonstrates **navigation** with `Navigator.pushNamed`.
- Shows how to build **custom reusable widgets** and helper methods for consistent UI.
- Combines **horizontal and vertical `ListView`s** for different types of content.
- Applies **theming** with `ThemeData(primarySwatch: Colors.amber)`.

This project illustrates how to structure a Flutter app with multiple pages, navigation, and reusable UI components, making it a solid educational example for mobile computing.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
