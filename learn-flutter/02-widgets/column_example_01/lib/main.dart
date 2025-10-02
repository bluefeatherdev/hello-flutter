// Learn Flutter - Widgets - Column Example 01:
import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnApp());
}

class ColumnApp extends StatelessWidget {
  const ColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ColumnApp Example 01')),
        body: Center(
          child: const Column(
            children: <Widget>[
              Text('Deliver features faster'),
              Text('Craft beautiful UIs'),
              Expanded(child: FittedBox(child: FlutterLogo())),
            ],
          ),
        ),
      ),
    );
  }
}
