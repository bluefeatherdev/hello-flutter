// Learn Flutter - Handling User Input - TextField Example:
import 'package:flutter/material.dart';

void main() => runApp(const TextFieldApp());

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField Sample')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFieldExample(),
          ),
        ),
      ),
    );
  }
}

class TextFieldExample extends StatelessWidget {
  TextFieldExample({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Mascot Name',
      ),
    );
  }
}
