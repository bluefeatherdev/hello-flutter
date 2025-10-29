// Learn Flutter - Widgets - Expanded Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const ExpandedApp());

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded Sample 01')),
        body: ExpandedExample(),
      ),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(color: Colors.teal[800], height: 100, width: 100),
          Expanded(
            child: Container(
              color: Colors.teal[600],
              width: 100,
              child: Center(
                child: Text(
                  'flex: 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(color: Colors.teal[800], height: 100, width: 100),
        ],
      ),
    );
  }
}
