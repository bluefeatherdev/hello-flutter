import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

final counterKey = GlobalKey<_CounterWidgetState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      home: Scaffold(
        appBar: AppBar(title: const Text('My Home Page')),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  const Text('Hello, World!'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print('Click!');
                      counterKey.currentState?._incrementCounter();
                    },
                    child: const Text('A button'),
                  ),
                  PaddedText(),
                  CounterWidget(key: counterKey),
                  PaddedText(),
                  // CounterWidget(key: counterKey),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class PaddedText extends StatelessWidget {
  const PaddedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(46.0),
      child: const Text('I\'m a PaddedText Widget'),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('$_counter');
  }
}
