// Learn Flutter - Handling User Input - DropdownMenu Example:
import 'package:flutter/material.dart';

void main() => runApp(const DropdownMenuApp());

class DropdownMenuApp extends StatelessWidget {
  const DropdownMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownMenu Sample')),
        body: Center(child: DropdownMenuExample()),
      ),
    );
  }
}

enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  orange('Orange', Colors.orange),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  late final ColorLabel? selectedColor;
  final TextEditingController colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<ColorLabel>(
      initialSelection: ColorLabel.green,
      controller: colorController,
      // requestFocusOnTap is enabled/disabled by platforms when it is null.
      // On mobile platforms, this is false by default. Setting this to true will
      // trigger focus request on the text field and virtual keyboard will appear
      // afterward. On desktop platforms however, this defaults to true.
      requestFocusOnTap: true,
      label: const Text('Color'),
      onSelected: (ColorLabel? color) {
        setState(() {
          selectedColor = color;
        });
      },
      dropdownMenuEntries: ColorLabel.values.map<DropdownMenuEntry<ColorLabel>>(
        (ColorLabel color) {
          return DropdownMenuEntry<ColorLabel>(
            value: color,
            label: color.label,
            enabled: color.label != 'Grey',
            style: MenuItemButton.styleFrom(foregroundColor: color.color),
          );
        },
      ).toList(),
    );
  }
}
