// Universidad de la Costa - Computación Móvil - Flutter Application 03:
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterAppExample());
  }
}

class CounterAppExample extends StatefulWidget {
  const CounterAppExample({super.key});

  @override
  State<CounterAppExample> createState() => _CounterAppExampleState();
}

class _CounterAppExampleState extends State<CounterAppExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App Example')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'You have clicked the button $counter times.',
              style: const TextStyle(fontSize: 23),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text(
                'Increment counter',
                style: TextStyle(color: Colors.teal, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
