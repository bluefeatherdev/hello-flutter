// Learn Flutter - Widgets - Positioned Example 01
import 'package:flutter/material.dart';

void main() => runApp(const PositionedApp());

class PositionedApp extends StatelessWidget {
  const PositionedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PositionedExample());
  }
}

class PositionedExample extends StatefulWidget {
  const PositionedExample({super.key});

  @override
  State<PositionedExample> createState() => _PositionedExampleState();
}

class _PositionedExampleState extends State<PositionedExample> {
  final List<MaterialColor> _palettes = [
    Colors.teal,
    Colors.cyan,
    Colors.blue,
    Colors.cyan,
  ];

  int _currentPalette = 0;

  void _changeColors() {
    setState(() {
      _currentPalette = (_currentPalette + 1) % _palettes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final palette = _palettes[_currentPalette];

    return Scaffold(
      appBar: AppBar(title: const Text('Positioned Sample 01')),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: GestureDetector(
            onTap: () {
              _changeColors();
            },
            child: Stack(
              children: <Widget>[
                _customPositioned(20, palette[900]),
                _customPositioned(40, palette[800]),
                _customPositioned(60, palette[700]),
                _customPositioned(80, palette[600]),
                _customPositioned(100, palette[500]),
                _customPositioned(120, palette[400]),
                _customPositioned(140, palette[300]),
                _customPositioned(160, palette[200]),
                _customPositioned(180, palette[100]),
                _customPositioned(200, palette[50]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _customPositioned(double baseSize, Color? color) {
    return Positioned(
      top: baseSize,
      right: baseSize,
      bottom: baseSize,
      left: baseSize,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        color: color,
      ),
    );
  }
}
