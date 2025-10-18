# card_example_01

This Flutter application demonstrates the use of the **Card widget** to group related information with a consistent Material Design style.

## Structure

- **CardExampleApp**
  - Root widget with `MaterialApp` and `Scaffold`.
  
  - Displays an `AppBar` and the `CardExample` widget as the body.

- **CardExample**
  - Centers a `Card` widget on the screen.
  
  - Inside the `Card`:
    - A **ListTile** with:

      - Leading icon (`Icons.album`).

      - Title: *The Enchanted Nightingale*.
      - Subtitle: *Music by Julie Gable. Lyrics by Sidney Stein.*
    - A **Row** with two `TextButton` actions:

      - **BUY TICKETS**

      - **LISTEN**

## Key Points

- **Card widget** provides a Material Design visual container with rounded corners and elevation.

- **ListTile** is commonly used inside cards to display leading/trailing widgets with title and subtitle.
- **Row with TextButtons** demonstrates how to add actions aligned to the end of the card.
- This example illustrates a **basic card layout** suitable for music, events, or product previews.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
