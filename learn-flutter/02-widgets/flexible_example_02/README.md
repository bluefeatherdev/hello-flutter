# flexible_example_02

This Flutter application demonstrates the use of the **Flexible widget** inside a `Row` to distribute horizontal space among children according to their `flex` factors.

## Structure

- **FlexibleApp**

  - Root widget with `MaterialApp`.

  - Sets the home to a `Scaffold` containing:

    - An `AppBar` titled *Flexible Sample 02*.

    - The `FlexibleExample` as the body.

- **FlexibleExample**

  - A `StatelessWidget` that builds a `Center` containing a `Row` with three children:

    1. A `Flexible` widget with `flex: 2` wrapping a `Container` (teal shade 800).

       - Occupies 2 parts of the available horizontal space.

       - Displays centered text `"flex: 2"`.

    2. A `Flexible` widget with `flex: 3` wrapping a `Container` (teal shade 700).

       - Occupies 3 parts of the available horizontal space.

       - Displays centered text `"flex: 3"`.

    3. A `Flexible` widget with `flex: 1` wrapping a `Container` (teal shade 600).

       - Occupies 1 part of the available horizontal space.

       - Displays centered text `"flex: 1"`.

## Key Points

- The **Flexible widget** allows children of a `Row`, `Column`, or `Flex` to share available space proportionally.

- The `flex` property determines how much of the available space each child receives relative to the others.

- In this example:

  - The total flex is `2 + 3 + 1 = 6`.

  - The first container takes 2/6 of the horizontal space.

  - The second container takes 3/6 of the horizontal space.

  - The third container takes 1/6 of the horizontal space.

- Useful for building **proportional layouts** where widgets adapt dynamically to available space.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
