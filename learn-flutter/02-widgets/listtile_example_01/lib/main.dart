// Learn Flutter - Widgets - ListTile Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListTile Sample 01')),
        body: ListTileExample(),
      ),
    );
  }
}

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const ColoredBox(
        color: Colors.teal,
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Material(
            child: ListTile(
              title: Text('ListTile with teal background'),
              tileColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
