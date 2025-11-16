// Learn Flutter - Widgets - ListenableBuilder Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const ListenableBuilderExample());

class CounterModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count += 1;
    notifyListeners();
  }
}

class ListenableBuilderExample extends StatefulWidget {
  const ListenableBuilderExample({super.key});

  @override
  State<ListenableBuilderExample> createState() =>
      _ListenableBuilderExampleState();
}

class _ListenableBuilderExampleState extends State<ListenableBuilderExample> {
  final CounterModel _counter = CounterModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListenableBuilder Sample 01',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListenableBuilder Sample 01',
            style: TextStyle(color: Colors.indigo),
          ),
        ),
        body: CounterBody(counterNotifier: _counter),
        floatingActionButton: FloatingActionButton(
          onPressed: _counter.increment,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class CounterBody extends StatelessWidget {
  const CounterBody({super.key, required this.counterNotifier});

  final CounterModel counterNotifier;

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
            listenable: counterNotifier,
            builder: (BuildContext context, Widget? child) {
              return Text(
                '${counterNotifier.count}',
                style: TextStyle(fontSize: 32, color: Colors.indigo),
              );
            },
          ),
        ],
      ),
    );
  }
}
