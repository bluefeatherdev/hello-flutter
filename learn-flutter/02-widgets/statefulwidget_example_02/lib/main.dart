// Learn Flutter - Widgets - StatefulWidget Example 02:
import 'package:flutter/material.dart';

void main() => runApp(const StatefulWidgetApp());

class StatefulWidgetApp extends StatelessWidget {
  const StatefulWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget Sample 02')),
      body: Center(child: TealContainer()),
    );
  }
}

class TealContainer extends StatefulWidget {
  const TealContainer({
    super.key,
    this.color = const Color(0xFF00897B),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  State<TealContainer> createState() => _TealContainerState();
}

class _TealContainerState extends State<TealContainer> {
  double _size = 1.0;

  void grow() {
    setState(() {
      _size += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: grow,
      child: Transform.scale(
        scale: _size,
        child: Container(
          width: 100,
          height: 100,
          color: widget.color,
          child: widget.child,
        ),
      ),
    );
  }
}
