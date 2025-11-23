# flutter_application_15

This Flutter application demonstrates **Firebase initialization, Firestore CRUD operations, SharedPreferences persistence, and async testing with Future/Duration**.  
It is part of the Universidad de la Costa – Computación Móvil course series.

## Features

- **Firebase Initialization**  

  Configured with `firebase_core` and `firebase_options.dart`.  

- **Firestore Integration**  

  - Create products with name and price.
    
  - Read products in real-time with `StreamBuilder`.  
  - Update product state via checkbox.  
  - Delete products with long press.  
  - Search products by name and state.  

- **SharedPreferences**  

  Persists last searched product (`id` and `name`) locally.  

- **Reusable Components**  

  `MyProduct` model for consistent mapping between Firestore documents and app objects.  

- **Testing Utilities**  

  `future_duration_testing.dart` demonstrates asynchronous behavior with `Future.delayed`.  

- **UI Features**  

  - `HomePage` displays products list with Firestore integration.
    
  - Modal bottom sheet for product creation with validation.  
  - AlertDialog feedback for CRUD operations.  
  - Buttons to test async functions and search with preferences.  

## Project Structure

```
lib
 ┣ components
 ┃ ┗ my_product.dart
 ┣ pages
 ┃ ┗ home_page.dart
 ┣ services
 ┃ ┗ firestore_service.dart
 ┣ test
 ┃ ┗ future_duration_testing.dart
 ┣ firebase_options.dart
 ┗ main.dart
```


## Key Points

- **MainApp** initializes Firebase and sets up routes.
    
- **FirestoreService** centralizes CRUD logic and search functionality.  
- **HomePage** integrates Firestore with UI, showing products and allowing creation, update, delete, and search.  
- **SharedPreferences** ensures persistence of last searched product.  
- **Future/Duration testing** provides educational insight into async programming in Dart.  

## Example Workflow

1. Launch the app → Firebase initializes with platform-specific options.  

2. Navigate to **HomePage** → products are displayed from Firestore in real-time.  

3. Create a product → modal bottom sheet allows entering name and price.  

4. Update product state → toggle checkbox to change active/inactive.  

5. Delete product → long press on a product removes it from Firestore.  

6. Search product → button searches for "Apple" and saves preferences if found.  

7. Test async → button runs `testFutureDuration()` showing async execution order in console.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
