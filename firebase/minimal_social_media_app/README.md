# minimal_social_media_app

This Flutter application is a **minimal social media app** built with **Firebase**.  
It demonstrates authentication, posting, and user management using Firestore, with a clean and simple UI.

## Features

- **Authentication**  

  Login and register users with email and password.  

  Logout functionality included.  

- **Firestore Integration**  

  Store posts and user data in Firestore.  

  Posts include text, author email, and timestamp.  

  User list shows username and email.  

- **Posting**  

  TextField in Home page to create new posts when logged in.  

  Posts displayed in a `ListTile` with text, email, and date.  

- **Pages**  

  - `LoginPage` → login with email and password.  
  - `RegisterPage` → create a new account.  
  - `HomePage` → view all posts and add new ones.  
  - `ProfilePage` → view your username and email.  
  - `UsersPage` → list of all registered users.  

- **Components**  

  Reusable widgets: buttons, drawer, list tiles, text fields, and post button.  

- **Themes**  

  Light and dark mode support with custom styles.  

## Project Structure

```
lib
 ┣ auth
 ┃ ┣ auth.dart
 ┃ ┗ login_or_register.dart
 ┣ components
 ┃ ┣ my_back_button.dart
 ┃ ┣ my_button.dart
 ┃ ┣ my_drawer.dart
 ┃ ┣ my_list_tile.dart
 ┃ ┣ my_post_button.dart
 ┃ ┗ my_textfield.dart
 ┣ database
 ┃ ┗ firestore_database.dart
 ┣ helpers
 ┃ ┗ helper_functions.dart
 ┣ pages
 ┃ ┣ home_page.dart
 ┃ ┣ login_page.dart
 ┃ ┣ profile_page.dart
 ┃ ┣ register_page.dart
 ┃ ┗ users_page.dart
 ┣ theme
 ┃ ┣ dark_mode.dart
 ┃ ┗ light_mode.dart
 ┣ firebase_options.dart
 ┗ main.dart
```


## Key Points

- Uses **Firebase Authentication** for login/register.  

- Uses **Cloud Firestore** for storing posts and user data.  

- Implements **Listenable UI** with `ListTile` for posts and user lists.  

- Provides **light/dark themes** for better user experience.  

- Demonstrates **scalable project organization** with clear separation of concerns.  

## Example Workflow

1. Launch the app → `AuthPage` decides whether to show login/register or home.  

2. Register or login → user is authenticated with Firebase.  

3. Navigate to **HomePage** → see all posts from all users.  

4. Add a new post → appears instantly in the list with your email and timestamp.  

5. Navigate to **UsersPage** → see all registered users.  

6. Navigate to **ProfilePage** → view your username and email.  

7. Logout → return to login/register flow.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)

