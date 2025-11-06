// Learn Flutter - State management - StatefulWidget Example
import 'package:flutter/material.dart';

void main() => runApp(const MyCounterApp());

class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('StatefulWidget Sample 01')),
        body: const MyCounterExample(),
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
          Text(
            'Count: $count',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w900,
              color: Colors.teal.shade500,
            ),
          ),
          const SizedBox(height: 5),
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
