// Learn Flutter - Widgets - Slider Example 02:
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
  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider Sample 02')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Slider(
                value: _currentSliderPrimaryValue,
                secondaryTrackValue: _currentSliderSecondaryValue,
                label: _currentSliderPrimaryValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderPrimaryValue = value;
                  });
                },
              ),
              Slider(
                value: _currentSliderSecondaryValue,
                label: _currentSliderSecondaryValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderSecondaryValue = value;
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
