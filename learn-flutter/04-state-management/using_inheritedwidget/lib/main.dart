// Learn Flutter - State management - InheritedWidget Example
import 'package:flutter/material.dart';

void main() => runApp(const InheritedWidgetApp());

class InheritedWidgetApp extends StatelessWidget {
  const InheritedWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyStateContainer());
  }
}

/// `StatefulWidget` that controls the state and exposes `MyState`.
class MyStateContainer extends StatefulWidget {
  const MyStateContainer({super.key});

  @override
  State<MyStateContainer> createState() => _MyStateContainerState();
}

class _MyStateContainerState extends State<MyStateContainer> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyState(
      data: counter,
      increment: incrementCounter,
      child: Scaffold(
        appBar: AppBar(title: const Text('InheritedWidget Sample 01')),
        body: const HomeScreen(),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

/// `InheritedWidget` that exposes the state and the action.
class MyState extends InheritedWidget {
  const MyState({
    super.key,
    required this.data,
    required this.increment,
    required super.child,
  });

  final int data;
  final VoidCallback increment;

  /// This method looks for the nearest `MyState` widget ancestor.
  static MyState of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<MyState>();

    assert(result != null, 'No MyState found in context');

    return result!;
  }

  @override
  /// This method should return true if the old widget's data is different
  /// from this widget's data. If true, any widgets that depend on this widget
  /// by calling `of()` will be re-built.
  bool updateShouldNotify(MyState oldWidget) => data != oldWidget.data;
}

/// Screen that consumes the state.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = MyState.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Counter value: ${state.data}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: state.increment,
            child: const Text('Increment from HomeScreen'),
          ),
        ],
      ),
    );
  }
}
