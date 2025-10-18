# card_example_03

This Flutter application demonstrates the use of different **Card constructors** (`Card`, `Card.filled`, and `Card.outlined`) to showcase variations in Material Design card styles.

## Structure

- **CardExampleApp**
  - Root widget with `MaterialApp` and `Scaffold`.
  
  - Displays an `AppBar` and the `CardExample` widget as the body.

- **CardExample**
  - Centers a `Column` with three different `Card` widgets:
  
    - **Card** (default elevated card).
    
    - **Card.filled** (card with filled background).
    - **Card.outlined** (card with outlined border).
  - Each card contains a `_SampleCard` widget with a label.

- **_SampleCard**
  - Stateless widget that receives a `cardName`.
  
  - Uses a `SizedBox` with fixed width and height.
  - Displays the card name centered as text.

## Key Points

- Demonstrates the **three main Card constructors** available in Flutter:

  - `Card` → default elevated style.
  
  - `Card.filled` → filled background style.
  - `Card.outlined` → outlined border style.
- Shows how to reuse a **custom widget** (`_SampleCard`) for consistent card content.
- Useful for comparing **visual styles** of cards in Material Design.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
