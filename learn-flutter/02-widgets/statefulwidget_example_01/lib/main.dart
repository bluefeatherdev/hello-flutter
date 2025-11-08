// Learn Flutter - Widgets - StatefulWidget Example 01:
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
      appBar: AppBar(title: const Text('StatefulWidget Sample 01')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[TealContainer(), TealContainer(), TealContainer()],
        ),
      ),
    );
  }
}

class TealContainer extends StatefulWidget {
  const TealContainer({super.key});

  @override
  State<TealContainer> createState() => _TealContainerState();
}

class _TealContainerState extends State<TealContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: (MediaQuery.of(context).size.height * 0.8) / 4,
        decoration: BoxDecoration(
          color: const Color(0xFF00897B),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Center(
          child: Text(
            'Teal Container\nStatefulWidget',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFDFDFDF),
            ),
          ),
        ),
      ),
    );
  }
}
