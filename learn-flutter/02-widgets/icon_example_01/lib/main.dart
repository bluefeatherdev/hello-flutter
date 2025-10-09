// Learn Flutter - Widgets - Icon Example 01:
import 'package:flutter/material.dart';

void main() {
  runApp(const IconApp());
}

class IconApp extends StatelessWidget {
  const IconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('IconApp Example 01')),
        body: Center(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
              Icon(Icons.beach_access, color: Colors.blue, size: 36.0),
            ],
          ),
        ),
      ),
    );
  }
}
