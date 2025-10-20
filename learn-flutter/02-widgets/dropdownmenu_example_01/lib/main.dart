// Learn Flutter - Widgets - DropdownMenu Example 01:
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

void main() => runApp(const DropdownMenuExampleApp());

typedef ColorEntry = DropdownMenuEntry<ColorLabel>;

// DropdownMenuEntry labels and values for the first dropdown menu.
enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;

  static final List<ColorEntry> entries = UnmodifiableListView<ColorEntry>(
    values.map<ColorEntry>(
      (ColorLabel color) => ColorEntry(
        value: color,
        label: color.label,
        enabled: color.label != 'Grey',
        style: MenuItemButton.styleFrom(foregroundColor: color.color),
      ),
    ),
  );
}

typedef IconEntry = DropdownMenuEntry<IconLabel>;

// DropdownMenuEntry labels and values for the second dropdown menu.
enum IconLabel {
  smile('Smile', Icons.sentiment_satisfied_outlined),
  cloud('Cloud', Icons.cloud_outlined),
  brush('Brush', Icons.brush_outlined),
  heart('Heart', Icons.favorite);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;

  static final List<IconEntry> entries = UnmodifiableListView<IconEntry>(
    values.map<IconEntry>(
      (IconLabel icon) => IconEntry(
        value: icon,
        label: icon.label,
        leadingIcon: Icon(icon.icon),
      ),
    ),
  );
}

class DropdownMenuExampleApp extends StatefulWidget {
  const DropdownMenuExampleApp({super.key});

  @override
  State<DropdownMenuExampleApp> createState() => _DropdownMenuExampleAppState();
}

class _DropdownMenuExampleAppState extends State<DropdownMenuExampleApp> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  ColorLabel? selectedColor;
  IconLabel? selectedIcon;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownMenu Sample 01')),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DropdownMenu<ColorLabel>(
                        initialSelection: ColorLabel.green,
                        controller: colorController,
                        // The default requestFocusOnTap value depends on the platform.
                        // On mobile, it defaults to false, and on desktop, it defaults to true.
                        // Setting this to true will trigger a focus request on the text field, and
                        // the virtual keyboard will appear afterward.
                        requestFocusOnTap: true,
                        label: const Text('Color'),
                        onSelected: (ColorLabel? color) {
                          setState(() {
                            selectedColor = color;
                          });
                        },
                        dropdownMenuEntries: ColorLabel.entries,
                      ),
                      const SizedBox(width: 24),
                      DropdownMenu(
                        controller: iconController,
                        enableFilter: true,
                        requestFocusOnTap: true,
                        leadingIcon: const Icon(Icons.search),
                        label: const Text('Icon'),
                        inputDecorationTheme: const InputDecorationTheme(
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                        ),
                        onSelected: (IconLabel? icon) {
                          selectedIcon = icon;
                        },
                        dropdownMenuEntries: IconLabel.entries,
                      ),
                    ],
                  ),
                ),
              ),
              if (selectedColor != null && selectedIcon != null)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'You selected a  ${selectedColor?.label} ${selectedIcon?.label}',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(
                          selectedIcon?.icon,
                          color: selectedColor?.color,
                        ),
                      ),
                    ],
                  ),
                )
              else
                const Text('Please select a color and an icon'),
            ],
          ),
        ),
      ),
    );
  }
}
