# textformfield_example_03

This Flutter application demonstrates advanced usage of the **TextFormField widget** with validation, asynchronous server-side checks, and dynamic error handling.

## Structure

- **TextFormFieldExampleApp**
  - Root widget with `MaterialApp`.
  
  - Sets the home to `TextFormFieldExample`.

- **TextFormFieldExample**
  - A `StatefulWidget` that manages form state and input validation.
  

- **_TextFormFieldExampleState**
  - Holds:
  
    - A `TextEditingController` to manage the input text.
    
    - A `GlobalKey<FormState>` to reference the form.
    - A `forceErrorText` string to display server-side validation errors.
    - An `isLoading` flag to show a loading indicator during async validation.
  - Provides:
  
    - `validator` method with multiple rules:
    
      - Field must not be empty.
      
      - No spaces allowed.
      - Must not start with a number.
      - Must be at least 3 characters long.
    - `onChanged` method to clear `forceErrorText` when input changes.
    
    - `onSave` method:
    
      - Validates the form.
      
      - Shows a loading spinner.
      - Calls `validateUsernameFromServer` to simulate an async server check.
      - Updates `forceErrorText` if the username is already taken.
  - Builds a `Form` containing:
  
    - A `TextFormField` with:
    
      - `forceErrorText` for dynamic error messages.
      
      - `controller` for input management.
      - `validator` and `onChanged` callbacks.
    - A `SizedBox` for spacing.
    - Either a `CircularProgressIndicator` (when loading) or a `TextButton` labeled *Save*.

- **validateUsernameFromServer**

  - Simulates a server request with a 3-second delay.
  
  - Checks if the username is in a set of taken usernames (`jack`, `alex`).
  - Returns an error message if taken, otherwise `null`.

## Key Points

- Demonstrates **synchronous and asynchronous validation** in a form.

- Uses **forceErrorText** to display server-side validation errors directly in the field.
- Shows how to manage **loading state** with a spinner during async operations.
- Illustrates **best practices** for combining client-side and server-side validation in Flutter forms.
- Useful for building **real-world forms** that require server checks (e.g., username availability).

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
