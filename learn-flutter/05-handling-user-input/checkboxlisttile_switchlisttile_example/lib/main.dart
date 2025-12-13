// Learn Flutter - Handling User Input - CheckboxListTile & SwitchListTile Example
import 'package:flutter/material.dart';

void main() => runApp(const CheckboxSwitchListTileApp());

class CheckboxSwitchListTileApp extends StatelessWidget {
  const CheckboxSwitchListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CheckboxListTile & SwitchListTile Sample'),
        ),
        body: Center(child: CheckboxSwitchListTileExample()),
      ),
    );
  }
}

class CheckboxSwitchListTileExample extends StatefulWidget {
  const CheckboxSwitchListTileExample({super.key});

  @override
  State<CheckboxSwitchListTileExample> createState() =>
      _CheckboxSwitchListTileExampleState();
}

class _CheckboxSwitchListTileExampleState
    extends State<CheckboxSwitchListTileExample> {
  double timeDilation = 1.0;
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CheckboxListTile(
          title: const Text('Animate Slowly'),
          value: timeDilation != 1.0,
          onChanged: (bool? value) {
            setState(() {
              timeDilation = value! ? 10.0 : 1.0;
            });
          },
          secondary: const Icon(Icons.hourglass_empty),
        ),
        SwitchListTile(
          title: const Text('Lights'),
          value: _lights,
          onChanged: (bool value) {
            setState(() {
              _lights = value;
            });
          },
          secondary: const Icon(Icons.lightbulb_outline),
        ),
      ],
    );
  }
}
