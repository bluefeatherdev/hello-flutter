# stack_example_01

This Flutter application demonstrates the use of the **Stack widget** to overlay multiple containers of decreasing size and different shades of teal, creating a layered effect.

## Structure

- **StackApp**

  - Root widget with `MaterialApp`.

  - Sets the home to a `Scaffold` containing:

    - An `AppBar` titled *Stack Sample 01*.

    - The `StackExample` as the body.

- **StackExample**

  - A `StatelessWidget` that builds a `Center` containing a `Stack`.

  - The `Stack` has multiple `Container` children, each smaller than the previous one:

    - First container: `360 x 360`, color `teal.shade900`.

    - Second container: `330 x 330`, color `teal.shade800`.

    - Third container: `300 x 300`, color `teal.shade700`.

    - Fourth container: `270 x 270`, color `teal.shade600`.

    - Fifth container: `240 x 240`, color `teal.shade500`.

    - Sixth container: `210 x 210`, color `teal.shade400`.

    - Seventh container: `190 x 190`, color `teal.shade300`.

    - Eighth container: `160 x 160`, color `teal.shade200`.

    - Ninth container: `130 x 130`, color `teal.shade100`.

    - Tenth container: `100 x 100`, color `teal.shade50`.

## Key Points

- The **Stack widget** allows widgets to be placed on top of each other in order.

- Children are painted in sequence, so later widgets appear above earlier ones.

- This example creates a **layered square pattern** with progressively smaller containers.

- Useful for understanding **overlay layouts** and how stacking order affects rendering.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
