# elevatedbutton_example_01

This Flutter application demonstrates the use of the `ElevatedButton` widget, one of the Material Design button types. It shows both a **disabled** and an **enabled** button, styled with a custom `ButtonStyle`.

- The `ElevatedButtonApp` sets up a `Scaffold` with an `AppBar` and the `ElevatedButtonExample` widget as its body.

- Inside `ElevatedButtonExample`:
  - A `ButtonStyle` is created using `ElevatedButton.styleFrom`, setting the `textStyle` to a font size of `20`.
  
  - A `Column` is centered on the screen with two buttons:
    - **Disabled button** → `onPressed: null` disables the button, rendering it with the disabled style.
  
    - **Enabled button** → `onPressed: () {}` enables the button, allowing interaction.

- A `SizedBox` with height `30` separates the two buttons for visual clarity.

This project highlights the basics of using `ElevatedButton`, including styling, enabling/disabling, and layout within a `Column`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
