// Universidad de la Costa - Computación Móvil - Flutter Application 02:
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeExample());
  }
}

class HomeExample extends StatelessWidget {
  const HomeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home App Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => print('Button pressed.'),
          onLongPress: () => print('Button long-pressed.'),
          child: const Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 46, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}
