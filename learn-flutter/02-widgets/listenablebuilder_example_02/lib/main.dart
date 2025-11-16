// Learn Flutter - Widgets - ListenableBuilder Example 02:
import 'package:flutter/material.dart';

void main() => runApp(const ListenableBuilderExample());

class ListenableBuilderExample extends StatefulWidget {
  const ListenableBuilderExample({super.key});

  @override
  State<ListenableBuilderExample> createState() =>
      _ListenableBuilderExampleState();
}

class _ListenableBuilderExampleState extends State<ListenableBuilderExample> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListenableBuilder Sample 02',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListenableBuilder Sample 02',
            style: TextStyle(color: Colors.indigo),
          ),
        ),
        body: CounterBody(counterValueNotifier: _counter),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _counter.value++,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class CounterBody extends StatelessWidget {
  const CounterBody({super.key, required this.counterValueNotifier});

  final ValueNotifier<int> counterValueNotifier;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Current counter value:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.blueGrey,
            ),
          ),
          // Thanks to the ListenableBuilder, only the widget displaying the
          // current count is rebuilt when counterValueNotifier notifies its
          // listeners. The Text widget above and CounterBody itself aren't
          // rebuilt.
          ListenableBuilder(
            listenable: counterValueNotifier,
            builder: (BuildContext context, Widget? child) {
              return Text(
                '${counterValueNotifier.value}',
                style: TextStyle(fontSize: 32, color: Colors.indigo),
              );
            },
          ),
        ],
      ),
    );
  }
}
