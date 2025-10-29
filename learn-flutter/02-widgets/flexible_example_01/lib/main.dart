// Learn Flutter - Widgets - Flexible Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const FlexibleApp());

class FlexibleApp extends StatelessWidget {
  const FlexibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flexible Sample 01')),
        body: FlexibleExample(),
      ),
    );
  }
}

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.teal.shade800,
              child: Center(
                child: const Text(
                  'flex: 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.teal.shade700,
              child: Center(
                child: const Text(
                  'flex: 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.teal.shade600,
              child: Center(
                child: const Text(
                  'flex: 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
