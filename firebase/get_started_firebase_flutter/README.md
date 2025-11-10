# get_started_firebase_flutter

This Flutter project is an introduction to **Firebase integration**.  
Most of the setup involves commands and configuration (Firebase CLI, project initialization, Android/iOS setup).  
Only a small portion of the code is required to initialize Firebase and connect it with Flutter.

## Structure

- **main.dart**

  - Ensures Flutter binding is initialized with `WidgetsFlutterBinding.ensureInitialized()`.

  - Calls `Firebase.initializeApp()` to set up Firebase services.

  - Retrieves the `FirebaseAnalytics` instance for event logging.

  - Runs the `MyApp` widget.

- **MyApp**

  - Root widget with `MaterialApp`.

  - Defines a simple theme and sets the home to `MyHomePage`.

- **MyHomePage**

  - A `StatefulWidget` with a `Scaffold`.

  - Displays a basic UI with an `AppBar` and a centered text message.

  - Example usage of analytics (commented):

    ```dart
    FirebaseAnalytics.instance.logEvent(
      name: 'screen_view',
      parameters: {'screen_name': 'Home'},
    );
    ```

## Key Points

- **Firebase Core** is required to initialize Firebase in Flutter.

- **Firebase Analytics** can be used to log events and track user interactions.

- The majority of Firebase setup is outside of Dart code (CLI commands, configuration files, platform-specific setup).

- This example is useful as a **starting point** for integrating Firebase services into Flutter apps.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
