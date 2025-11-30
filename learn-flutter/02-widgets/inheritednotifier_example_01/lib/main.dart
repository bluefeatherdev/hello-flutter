// Learn Flutter - Widgets - InheritedNotifier Example 01:
import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() => runApp(const InheritedNotifierApp());

class InheritedNotifierApp extends StatelessWidget {
  const InheritedNotifierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: InheritedNotifierExample());
  }
}

class SpinModel extends InheritedNotifier<AnimationController> {
  const SpinModel({super.key, super.notifier, required super.child});

  static double of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SpinModel>()!
        .notifier!
        .value;
  }
}

class Spinner extends StatelessWidget {
  const Spinner({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: SpinModel.of(context) * 2.0 * math.pi,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.teal,
        child: const Center(
          child: Text('Whee!', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

class InheritedNotifierExample extends StatefulWidget {
  const InheritedNotifierExample({super.key});

  @override
  State<InheritedNotifierExample> createState() =>
      _InheritedNotifierExampleState();
}

/// [AnimationController]s ca be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _InheritedNotifierExampleState extends State<InheritedNotifierExample>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InheritedNotifier Sample 01')),
      body: Center(
        child: SpinModel(
          notifier: _controller,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[Spinner(), Spinner(), Spinner()],
          ),
        ),
      ),
    );
  }
}
