# flutter_application_16

This Flutter application demonstrates **basic login and session management using SharedPreferences**.  
It is part of the Universidad de la Costa – Computación Móvil course series.

## Features

- **Login Page**  

  - Username and password fields with validation. 
   
  - Hardcoded credentials (`bluefeather` / `123`).  
  - Stores user data (`name`, `role`) in SharedPreferences.  
  - Redirects to `OtherPage` if login is successful.  
  - Displays error message if login fails.  

- **Session Verification**  

  - On app start, checks if user session exists in SharedPreferences. 
   
  - If session is found, navigates directly to `OtherPage`.  

- **Other Page**  

  - Loads and displays stored user data (`name`, `role`).  
  
  - Provides an **Exit button** to clear SharedPreferences and return to login.  

- **Routing**  

  - `'/'` → `LoginPage`.  
  
  - `'/other-page'` → `OtherPage`.  



## Key Points

- Uses **SharedPreferences** for lightweight local persistence.
  
- Demonstrates **session management** without Firebase or external services.  
- Provides a clear example of **navigation and route handling** in Flutter.  
- Useful for learning **state persistence** and **basic authentication flow**.  

## Example Workflow

1. Launch the app → `LoginPage` is displayed.  

2. Enter credentials:  
   - Username: `bluefeather`  
  
   - Password: `123`  

3. On success → user data (`Jesús Domínguez`, `Administrator`) is saved in SharedPreferences and navigates to `OtherPage`.  

4. On failure → error message `"Incorrect data"` is shown.  

5. On `OtherPage` → stored data is displayed with greeting.  

6. Press **Exit** → clears SharedPreferences and returns to `LoginPage`.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
