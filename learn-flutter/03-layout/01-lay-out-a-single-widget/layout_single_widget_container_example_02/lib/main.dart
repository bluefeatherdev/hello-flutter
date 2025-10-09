// Learn Flutter - Layout - Single Widget - Container Example 02
import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerApp());
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lay out a Single Widget with Container'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: BorderedImage(),
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
