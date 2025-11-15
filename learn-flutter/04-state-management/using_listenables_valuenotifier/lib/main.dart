// Learn Flutter - State Management - ValueNotifier Example:
import 'package:flutter/material.dart';

void main() {
  runApp(const ValueNotifierApp());
}

class ValueNotifierApp extends StatelessWidget {
  const ValueNotifierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ValueNotifier Sample',
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final ValueNotifier<int> counterNotifier = ValueNotifier(0);

  @override
  void dispose() {
    counterNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ValueNotifier Sample',
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ValueListenableBuilder(
              valueListenable: counterNotifier,
              builder: (context, value, child) {
                return Text(
                  'My counter: $value',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.indigo.shade400,
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    counterNotifier.value = 0;
                  },
                  label: const Text('Reset'),
                  icon: const Icon(Icons.loop),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    counterNotifier.value++;
                  },
                  label: const Text('Increment'),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
