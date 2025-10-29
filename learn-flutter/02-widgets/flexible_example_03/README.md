# flexible_example_03

This Flutter application demonstrates a **comparative example** of how the **Flexible widget** behaves with different `fit` values (`loose` vs `tight`), how it relates to `Expanded`, and how it differs from fixed-size widgets without flexibility.

## Structure

- **FlexibleApp**

  - Root widget with `MaterialApp`.

  - Sets the home to a `Scaffold` containing:

    - An `AppBar` titled *Flexible Sample 03*.

    - The `FlexFitComparison` as the body.

- **FlexFitComparison**

  - A `StatelessWidget` that builds a `Column` with four main cases:

    1. **Case 1: Flexible with fit: loose and fixed size**

       - A `Row` where the first child is a `Flexible(flex: 1, fit: FlexFit.loose)` wrapping a `Container` with `width: 80`.

       - The fixed width is **respected**.

       - The second child is an `Expanded` that fills the remaining space.

    2. **Case 2: Flexible with fit: tight and fixed size**

       - A `Row` where the first child is a `Flexible(flex: 1, fit: FlexFit.tight)` wrapping a `Container` with `width: 80`.

       - The fixed width is **ignored** in the horizontal direction.

       - The second child is an `Expanded` that fills the remaining space.

    3. **Case 3: Expanded (equivalent to Flexible with tight)**

       - A `Row` with two `Expanded` children.

       - The first has `flex: 2` and the second has `flex: 1`.

       - Space is distributed proportionally (2:1).

    4. **Case 4: Without Flexible, fixed size**

       - A `Row` with two `Container` widgets of fixed width (100 px each).

       - Followed by an `Expanded` that fills the remaining space.

## Key Points

- **Flexible with loose** allows the child to keep its intrinsic size (e.g., fixed width/height), as long as it does not exceed the allocated space.

- **Flexible with tight** forces the child to expand and fill all the space assigned by its `flex` factor, ignoring fixed width/height in the main axis.

- **Expanded** is shorthand for `Flexible(fit: FlexFit.tight)`.

- **Without Flexible**, children keep their fixed sizes and do not participate in proportional space distribution.

- This example is useful to **visualize side-by-side** how `loose`, `tight`, `Expanded`, and fixed-size widgets behave in a `Row`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
