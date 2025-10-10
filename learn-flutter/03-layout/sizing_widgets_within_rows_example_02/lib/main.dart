// Learn Flutter - Layout - Multiple Widgets - Sizing within a Row
import 'package:flutter/material.dart';

void main() {
  runApp(const RowExpandedApp());
}

class RowExpandedApp extends StatelessWidget {
  const RowExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Sizing Widgets within a Row')),
        body: Center(
          child: const Row(
            children: <Widget>[
              Expanded(child: BorderedImage()),
              Expanded(flex: 2, child: BorderedImage()),
              Expanded(child: BorderedImage()),
            ],
          ),
        ),
      ),
    );
  }
}

class BorderedImage extends StatelessWidget {
  const BorderedImage({super.key, this.width = 200, this.height = 200});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          'https://docs.flutter.dev/assets/images/docs/fwe/dash-search.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
