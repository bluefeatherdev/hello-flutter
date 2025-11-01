// Learn Flutter - Widgets - Stack Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const StackApp());

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Sample 01')),
        body: StackExample(),
      ),
    );
  }
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(width: 360, height: 360, color: Colors.teal.shade900),
          Container(width: 330, height: 330, color: Colors.teal.shade800),
          Container(width: 300, height: 300, color: Colors.teal.shade700),
          Container(width: 270, height: 270, color: Colors.teal.shade600),
          Container(width: 240, height: 240, color: Colors.teal.shade500),
          Container(width: 210, height: 210, color: Colors.teal.shade400),
          Container(width: 190, height: 190, color: Colors.teal.shade300),
          Container(width: 160, height: 160, color: Colors.teal.shade200),
          Container(width: 130, height: 130, color: Colors.teal.shade100),
          Container(width: 100, height: 100, color: Colors.teal.shade50),
        ],
      ),
    );
  }
}
