# platform_device_specifications

This Flutter application demonstrates how to **query and display device and platform information** using `MediaQuery`, `Theme.of(context).platform`, and the `dart:io` `Platform` class. It also handles web detection with `kIsWeb`.

## Structure

- **MyApp**
  - Root widget with `MaterialApp`.
  
  - Sets the home to `ResizablePage`.

- **ResizablePage**
  - Uses `MediaQuery` to obtain:
  
    - Window size.
    
    - Device pixel ratio.
    - Orientation.
    - Brightness.
  - Uses `Theme.of(context).platform` to get the platform from the theme.
  - Uses `Platform` (from `dart:io`) to display:
    - Operating system version.
    
    - Number of processors.
    - Locale.
  - Uses a helper method `platformDescription()` to detect the platform:
    - Web, Android, iOS, Windows, macOS, Linux, Fuchsia, or Unknown.
  - Displays all values in a `Table` widget with property–value rows.


## Key Points

- **`MediaQuery`** → provides runtime information about the current screen and device metrics.

- **`Theme.of(context).platform`** → returns the platform style used by the app’s theme.
- **`Platform` class** → exposes OS-level details such as version, locale, and processor count.
- **`kIsWeb`** → allows detection of whether the app is running on the web.
- **Table layout** → organizes the properties and values in a clean, readable format.


This project illustrates how to **inspect device specifications at runtime** and present them in a structured UI.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
