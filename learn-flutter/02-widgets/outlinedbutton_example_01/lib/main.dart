// Learn Flutter - Handling User Input - OutlinedButton Example
import 'package:flutter/material.dart';

void main() => runApp(const OutlinedButtonApp());

class OutlinedButtonApp extends StatelessWidget {
  const OutlinedButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OutlinedButton Example',
      home: OutlinedButtonExample(),
    );
  }
}

class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OutlinedButton Sample')),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            // debugPrint('Received click');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Received click!'),
                action: SnackBarAction(label: 'Action', onPressed: () {}),
              ),
            );
          },
          child: const Text('Click me'),
        ),
      ),
    );
  }
}
