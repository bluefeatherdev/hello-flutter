// Learn Flutter - Widgets - IconButton Example 03:
import 'package:flutter/material.dart';

void main() => runApp(const IconButtonExampleApp());

class IconButtonExampleApp extends StatelessWidget {
  const IconButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('IconButton Sample 03')),
        body: IconButtonExample(),
      ),
    );
  }
}

class IconButtonExample extends StatelessWidget {
  const IconButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            color: Colors.lightBlue,
            shape: CircleBorder(),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.android),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
