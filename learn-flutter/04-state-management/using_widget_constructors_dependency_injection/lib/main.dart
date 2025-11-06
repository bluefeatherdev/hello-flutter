// Learn Flutter - State management - Widget Constructors Example
import 'package:flutter/material.dart';

void main() => runApp(const MyCounterApp());

class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Widget Constructors Sample 01')),
        body: const MyCounterExample(),
      ),
    );
  }
}

class MyCounter extends StatelessWidget {
  final int count;
  const MyCounter({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'MyCounter Widget: $count',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w900,
          color: Colors.teal.shade500,
        ),
      ),
    );
  }
}

class MyCounterExample extends StatefulWidget {
  const MyCounterExample({super.key});

  @override
  State<MyCounterExample> createState() => _MyCounterExampleState();
}

class _MyCounterExampleState extends State<MyCounterExample> {
  /// This is a ephemeral sate
  /// `_MyCounterExampleState` objet and its `count` variable
  /// are created the first time that `MyCounterExample` is built,
  /// and exit until it's removed from the screen.
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyCounter(count: count),
          MyCounter(count: count),
          MyCounter(count: count),
          TextButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Text(
              'Increment',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
