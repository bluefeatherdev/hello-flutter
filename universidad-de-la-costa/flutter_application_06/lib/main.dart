// Universidad de la Costa - Computación Móvil - Flutter Application 06:
import 'package:flutter/material.dart';

void main() => runApp(const CheckboxListTileApp());

class CheckboxListTileApp extends StatelessWidget {
  const CheckboxListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CheckboxListTileExample());
  }
}

class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({super.key});

  @override
  State<CheckboxListTileExample> createState() =>
      _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample> {
  bool checkBoxValue1 = true;
  bool checkBoxValue2 = true;
  bool checkBoxValue3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CheckboxListTile App Example')),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            value: checkBoxValue1,
            onChanged: (bool? value) {
              setState(() {
                checkBoxValue1 = value!;
              });
            },
            title: const Text('Some title 1'),
            subtitle: const Text('Supporting text'),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkBoxValue2,
            onChanged: (bool? value) {
              setState(() {
                checkBoxValue2 = value!;
              });
            },
            title: const Text('Some title 2'),
            subtitle: const Text(
              'Longer supporting text to demonstrate how the text wraps and the checkbox is centered vertically with the text.',
            ),
          ),
          const Divider(height: 0),
          CheckboxListTile(
            value: checkBoxValue3,
            onChanged: (bool? value) {
              setState(() {
                checkBoxValue3 = value!;
              });
            },
            title: const Text('Some title 3'),
            subtitle: const Text(
              "Longer supporting text to demonstrate how the text wraps and how setting 'CheckboxListTile.isThreeLine = true' aligns the checkbox to the top vertically with the text.",
            ),
            isThreeLine: true,
          ),
          const Divider(height: 0),
        ],
      ),
    );
  }
}
