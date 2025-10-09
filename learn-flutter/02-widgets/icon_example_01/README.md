# icon_example_01

This Flutter application demonstrates the use of the `Icon` widget, which displays graphical symbols from the Material Icons font. Icons are non-interactive by default and are typically used to visually represent actions, states, or categories.

- The `IconApp` sets up a `Scaffold` with an `AppBar` and a centered `Row` of icons in the body.

- The `Row` uses `mainAxisAlignment: MainAxisAlignment.spaceAround` to evenly distribute the icons horizontally.
- Three `Icon` widgets are displayed:
  - A **favorite** icon (`Icons.favorite`) in pink, size `24.0`, with a `semanticLabel` for accessibility (screen readers like TalkBack or VoiceOver).
  
  - An **audiotrack** icon (`Icons.audiotrack`) in green, size `30.0`.
  - A **beach access** icon (`Icons.beach_access`) in blue, size `36.0`.

### Key points:
- `Icon` widgets are purely visual. For interactive icons, use `IconButton`.

- The `semanticLabel` property improves accessibility by providing a description for assistive technologies.
- Icons can be styled with `color`, `size`, and other properties, and they inherit defaults from the ambient `IconTheme` if not explicitly set.

This project highlights the basics of using the `Icon` widget in Flutter, including styling, accessibility, and layout within a `Row`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
