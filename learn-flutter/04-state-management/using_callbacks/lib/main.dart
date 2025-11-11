// Learn Flutter - State Management - Using Callbacks:
import 'package:flutter/material.dart';

void main() => runApp(const CallBacksApp());

class CallBacksApp extends StatelessWidget {
  const CallBacksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Using Callbacks Sample',
      home: CounterExample(),
    );
  }
}

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int parentCount = 0;

  void handleCounterChanged(int newValue) {
    setState(() {
      parentCount = newValue;
    });
    debugPrint('Callback received: $newValue');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Using Callbacks Sample')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Parent count: $parentCount',
              style: TextStyle(
                fontSize: 23,
                color: Colors.indigo.shade400,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            MyCounter(onChanged: handleCounterChanged),
          ],
        ),
      ),
    );
  }
}

typedef ValueChanged<T> = void Function(T value);

class MyCounter extends StatefulWidget {
  const MyCounter({super.key, required this.onChanged});

  final ValueChanged<int> onChanged;

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Local count: $count',
          style: TextStyle(
            fontSize: 23,
            color: Colors.blueGrey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              count++;
            });
            // Notify parent with the new value
            widget.onChanged(count);
          },
          icon: Icon(Icons.add, size: 19),
          label: const Text('Increment', style: TextStyle(fontSize: 19)),
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              count = 0;
            });
            // Notify parent with the new value
            widget.onChanged(count);
          },
          icon: Icon(Icons.loop, size: 19),
          label: const Text('Reset', style: TextStyle(fontSize: 19)),
        ),
      ],
    );
  }
}
