// Learn Flutter - Widgets - Slider Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const SliderApp());

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SliderExample());
  }
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 20;
  double _currentDiscreteSliderValue = 60;
  bool year2023 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider Sample 01')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: <Widget>[
              Slider(
                year2023: year2023,
                value: _currentSliderValue,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              Slider(
                year2023: year2023,
                value: _currentDiscreteSliderValue,
                max: 100,
                divisions: 5,
                label: _currentDiscreteSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentDiscreteSliderValue = value;
                  });
                },
              ),
              SwitchListTile(
                value: year2023,
                title: year2023
                    ? const Text('Switch to latest M3 style')
                    : const Text('Switch to year2023 M3 style'),
                onChanged: (bool value) {
                  setState(() {
                    year2023 = !year2023;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
