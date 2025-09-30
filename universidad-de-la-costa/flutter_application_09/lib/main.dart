// Universidad de la Costa - Computación Móvil - Flutter Application 09:
import 'package:flutter/material.dart';

void main() => runApp(const ListViewApp());

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListViewAppExample());
  }
}

class ListViewAppExample extends StatelessWidget {
  const ListViewAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView App Example')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.teal[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.teal[300],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.teal[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}
