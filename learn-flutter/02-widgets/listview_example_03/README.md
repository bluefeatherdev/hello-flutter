# listview_example_03

This Flutter application demonstrates the use of the `ListView.separated` constructor to create a scrollable list with custom separators between items. Unlike the default `ListView` or `ListView.builder`, this constructor allows you to define both the item builder and a separator builder, making it ideal for lists where visual separation is important.

- Two lists are defined at the top level:  
  - `entries` → a list of strings (`['A', 'B', 'C', 'D', 'E']`). 
   
  - `colorCodes` → a list of integers representing shades of `Colors.teal`.

- The `ListView.separated` widget uses:  
  - `itemBuilder` → builds each `Container` dynamically with a fixed height of `50`, a background color from `Colors.teal[colorCodes[index]]`, and a centered `Text` displaying the entry.  
  
  - `separatorBuilder` → inserts a `Divider` widget between each item.  
  - `itemCount` → ensures the list has the same length as `entries`.

- The `padding` property is set to `EdgeInsets.all(8)` to provide consistent spacing around the list.

- The layout is wrapped in a `Center` widget, and the overall structure is provided by a `Scaffold` with an `AppBar`.

This project highlights how to use `ListView.separated` to efficiently build lists with separators, improving readability and organization of list items.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
