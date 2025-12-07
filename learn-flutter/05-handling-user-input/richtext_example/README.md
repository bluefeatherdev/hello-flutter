# richtext_example

This Flutter application demonstrates **handling user input with RichText** to display styled text using multiple `TextSpan` widgets.  
It shows how to combine different text styles (normal, bold, etc.) within a single block of text.

## Structure

- **RichTextApp**  

  Root widget with `MaterialApp`.  

  Sets the home to a `Scaffold` containing the sample UI.  

- **Scaffold UI**  

  - **AppBar** → displays the title `"RichText Sample"`.  

  - **Body** → centered `RichText` widget with styled text.  

- **RichText**  

  - Uses a root `TextSpan` with base style (`fontSize: 23`, `color: Colors.black`).  

  - Contains child `TextSpan` elements:  

    - `"bold"` → styled with `FontWeight.bold`.  
  
    - `" world!"` → inherits the base style.  

## Key Points

- **RichText** allows combining multiple styles in one text block.  

- **TextSpan** defines individual segments with their own styles.  

- Styles cascade: children inherit from the parent unless overridden.  

- Useful for **inline formatting**, such as bold, italic, colored, or differently sized text.  

## Example Workflow

1. Launch the app → `RichText Sample` screen is displayed.  

2. The text `"Hello bold world!"` appears in the center.  

3. `"Hello"` and `" world!"` are styled with the base font size and color.  

4. `"bold"` is displayed in bold to demonstrate inline styling.  

5. The app showcases how `RichText` and `TextSpan` can be used for rich text formatting.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
