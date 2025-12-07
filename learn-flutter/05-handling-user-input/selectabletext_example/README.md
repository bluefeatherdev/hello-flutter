# selectabletext_example

This Flutter application demonstrates **handling user input with SelectableText** to allow users to select and copy text directly from the UI.  
It shows how `SelectableText` provides built-in interactivity compared to a regular `Text` widget.

## Structure

- **SelectableTextApp**  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- **Scaffold UI**  

  - **AppBar** → displays the title `"SelectableText Sample"`.  

  - **Body** → centered `SelectableText` widget showing a multiline passage.  

- **SelectableText**  

  Displays a block of text that users can: 

  - Select with touch or mouse.  

  - Copy to clipboard using standard platform gestures.  
  - Scroll horizontally if needed.  

## Key Points

- **SelectableText** behaves like `Text` but adds selection and copy functionality.  

- Useful for **quotes, code snippets, or any text that users may want to copy**.  

- Supports multiline strings with `\n` for line breaks.  

- Integrates seamlessly with Flutter’s Material UI components.  

## Example Workflow

1. Launch the app → `SelectableText Sample` screen is displayed.  

2. The passage of text appears in the center of the screen.  

3. Tap and hold (mobile) or click and drag (desktop/web) to select text.  

4. Copy the selected text using the platform’s standard copy gesture.  

5. The app demonstrates how `SelectableText` enhances user interaction compared to static `Text`.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
