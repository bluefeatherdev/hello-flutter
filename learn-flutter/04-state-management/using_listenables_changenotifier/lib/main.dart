// Learn Flutter - State Management - ChangeNotifier Example:
import 'package:flutter/material.dart';

void main() {
  runApp(const ChangeNotifierApp());
}

class ChangeNotifierApp extends StatelessWidget {
  const ChangeNotifierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ChangeNotifier Sample',
      home: CounterPage(),
    );
  }
}

class CounterNotifier extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final CounterNotifier counterNotifier = CounterNotifier();

  @override
  void dispose() {
    counterNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChangeNotifier Sample')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListenableBuilder(
              listenable: counterNotifier,
              builder: (context, child) {
                return Text(
                  'My counter: ${counterNotifier.count}',
                  style: TextStyle(fontSize: 23),
                );
              },
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    counterNotifier.reset();
                  },
                  label: const Text('Reset'),
                  icon: const Icon(Icons.loop),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    counterNotifier.increment();
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
