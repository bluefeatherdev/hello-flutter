// Learn Flutter - Handling User Input - Slider Example:
import 'package:flutter/material.dart';

void main() => runApp(const SliderApp());

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Slider Sample')),
        body: Center(child: SliderExample()),
      ),
    );
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentVolume = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Slider(
        value: _currentVolume,
        max: 5,
        divisions: 5,
        label: _currentVolume.toString(),
        onChanged: (double value) {
          setState(() {
            _currentVolume = value;
          });
        },
      ),
    );
  }
}
