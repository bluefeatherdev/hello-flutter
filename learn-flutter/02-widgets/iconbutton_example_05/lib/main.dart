// Learn Flutter - Widgets - IconButton Example 05:
import 'package:flutter/material.dart';

void main() => runApp(const IconButtonExampleApp());

class IconButtonExampleApp extends StatelessWidget {
  const IconButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      title: 'Icon Button Types',
      home: Scaffold(
        appBar: AppBar(title: const Text('IconButton Sample 05')),
        body: const DemoIconToggleButtons(),
      ),
    );
  }
}

class DemoIconToggleButtons extends StatefulWidget {
  const DemoIconToggleButtons({super.key});

  @override
  State<DemoIconToggleButtons> createState() => _DemoIconToggleButtonsState();
}

class _DemoIconToggleButtonsState extends State<DemoIconToggleButtons> {
  bool standardSelected = false;
  bool filledSelected = false;
  bool tonalSelected = false;
  bool outlinedSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Standard icon button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  standardSelected = !standardSelected;
                });
              },
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              isSelected: standardSelected,
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              isSelected: null,
            ),
          ],
        ),
        // Filled icon button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton.filled(
              onPressed: () {
                setState(() {
                  filledSelected = !filledSelected;
                });
              },
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              isSelected: filledSelected,
            ),
            const SizedBox(width: 10),
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              isSelected: null,
            ),
          ],
        ),
        // Filled tonal icon button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton.filledTonal(
              onPressed: () {
                setState(() {
                  tonalSelected = !tonalSelected;
                });
              },
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              isSelected: tonalSelected,
            ),
            const SizedBox(width: 10),
            IconButton.filledTonal(
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              isSelected: null,
            ),
          ],
        ),
        // Outlined icon button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton.outlined(
              onPressed: () {
                setState(() {
                  outlinedSelected = !outlinedSelected;
                });
              },
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              isSelected: outlinedSelected,
            ),
            const SizedBox(width: 10),
            IconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              isSelected: null,
            ),
          ],
        ),
      ],
    );
  }
}
