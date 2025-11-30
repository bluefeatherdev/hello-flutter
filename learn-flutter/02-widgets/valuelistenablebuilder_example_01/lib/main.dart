// Learn Flutter - Widgets - ValueListenableBuilder Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const ValueListenableBuilderApp());

class ValueListenableBuilderApp extends StatelessWidget {
  const ValueListenableBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ValueListenableBuilderExample());
  }
}

class ValueListenableBuilderExample extends StatefulWidget {
  const ValueListenableBuilderExample({super.key});

  @override
  State<ValueListenableBuilderExample> createState() =>
      _ValueListenableBuilderExampleState();
}

class _ValueListenableBuilderExampleState
    extends State<ValueListenableBuilderExample> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ValueListenableBuilder Sample 01')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            ValueListenableBuilder<int>(
              valueListenable: _counter,
              builder: (context, value, child) {
                // This builder will only get called when the _counter
                // is updated.
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CountDisplay(count: value),
                    child!,
                  ],
                );
              },
              // This child parameter is most helpful is the child is
              // expensive to build and does not depend on the value from
              // the notifier.
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: FlutterLogo(size: 40),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _counter.value += 1,
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

class CountDisplay extends StatelessWidget {
  const CountDisplay({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsetsDirectional.all(10.0),
      child: Text('$count', style: Theme.of(context).textTheme.headlineMedium),
    );
  }
}
