// Universidad de la Costa - Computación Móvil - Flutter Application 01:
import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First Flutter App')),
        body: Center(
          child: Text(
            'Hello World!',
            style: const TextStyle(fontSize: 23, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}
