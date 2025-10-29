# flexible_example_04

This Flutter application demonstrates a **comparative example** of how the **Flexible widget** behaves with different `fit` values (`loose` vs `tight`) in a **vertical layout (Column)**, how it relates to `Expanded`, and how it differs from fixed-size widgets without flexibility.

## Structure

- **FlexibleApp**

  - Root widget with `MaterialApp`.

  - Sets the home to a `Scaffold` containing:

    - An `AppBar` titled *Flexible Sample 04*.

    - The `FlexFitComparison` as the body.

- **FlexFitComparison**

  - A `StatelessWidget` that builds a `Row` with four main cases, each one represented by a `Column`:

    1. **Case 1: Flexible with fit: loose and fixed size**

       - A `Column` where the first child is a `Flexible(flex: 1, fit: FlexFit.loose)` wrapping a `Container` with `height: 160`.

       - The fixed height is **respected**.

       - The second child is an `Expanded` that fills the remaining vertical space.

    2. **Case 2: Flexible with fit: tight and fixed size**

       - A `Column` where the first child is a `Flexible(flex: 1, fit: FlexFit.tight)` wrapping a `Container` with `height: 160`.

       - The fixed height is **ignored** in the vertical direction.

       - The second child is an `Expanded` that fills the remaining vertical space.

    3. **Case 3: Expanded (equivalent to Flexible with tight)**

       - A `Column` with two `Expanded` children.

       - The first has `flex: 2` and the second has `flex: 1`.

       - Space is distributed proportionally (2:1).

    4. **Case 4: Without Flexible, fixed size**

       - A `Column` with two `Container` widgets of fixed height (100 px each).

       - Followed by an `Expanded` that fills the remaining vertical space.

## Key Points

- **Flexible with loose** allows the child to keep its intrinsic size (e.g., fixed height), as long as it does not exceed the allocated space.

- **Flexible with tight** forces the child to expand and fill all the space assigned by its `flex` factor, ignoring fixed height in the main axis.

- **Expanded** is shorthand for `Flexible(fit: FlexFit.tight)`.

- **Without Flexible**, children keep their fixed sizes and do not participate in proportional space distribution.

- This example is useful to **visualize side-by-side** how `loose`, `tight`, `Expanded`, and fixed-size widgets behave in a `Column`.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
