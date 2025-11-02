# listtile_example_11

This Flutter application demonstrates how to build a **custom article-style list item** that extends beyond the standard `ListTile`. It shows how to combine `Row`, `Expanded`, `AspectRatio`, and custom widgets to create a reusable component suitable for displaying article previews or news feeds.

## Structure

- **CustomListItemApp**

  - Root widget with `MaterialApp`.

  - Sets the home to the `CustomListItemExample`.

- **_ArticleDescription**

  - A private `StatelessWidget` that displays article metadata.

  - Accepts:

    - `title`: The article headline.

    - `subtitle`: A short description or excerpt.

    - `author`: The article author.

    - `publishDate`: The date of publication.

    - `readDuration`: Estimated reading time.

  - Layout:

    - A `Column` with left alignment.

    - `title`: Bold, clipped to two lines.

    - `subtitle`: Smaller text, clipped to two lines, styled in gray.

    - `author`: Displayed in small black text.

    - `publishDate` and `readDuration`: Displayed together in gray text.

- **CustomListItemTwo**

  - A `StatelessWidget` that represents a single custom list item.

  - Accepts:

    - `thumbnail`: A widget displayed on the left.

    - `title`, `subtitle`, `author`, `publishDate`, `readDuration`.

  - Layout:

    - A `Row` with:

      1. `AspectRatio(aspectRatio: 1.0)`: Ensures the thumbnail is square.

      2. `Expanded`: Contains the `_ArticleDescription`.

- **CustomListItemExample**

  - A `StatelessWidget` that builds a `Scaffold` with:

    - An `AppBar` titled *ListTile Sample 11 (Custom)*.

    - A `ListView` with padding.

    - Contains two `CustomListItemTwo` examples with different thumbnails, titles, subtitles, authors, and metadata.

## Key Points

- **CustomListItemTwo** demonstrates how to create reusable article-style list items beyond the standard `ListTile`.

- **AspectRatio** ensures consistent thumbnail sizing.

- **Expanded** allows the description to take up the remaining horizontal space.

- **_ArticleDescription** encapsulates text layout and styling, keeping the code modular and reusable.

- This pattern is useful for building **news feeds, blog lists, or article previews** where `ListTile` alone is not sufficient.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
