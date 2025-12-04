// Learn Flutter - Handling User Input - ElevatedButton Example
import 'package:flutter/material.dart';

void main() => runApp(const ElevatedButtonApp());

class ElevatedButtonApp extends StatelessWidget {
  const ElevatedButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ElevatedButton Example',
      home: ElevatedButtonExample(),
    );
  }
}

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ElevatedButton Sample')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your count: $count',
              style: TextStyle(fontSize: 19, color: Colors.blueGrey),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  count += 1;
                });
              },
              child: const Text('Enabled'),
            ),
          ],
        ),
      ),
    );
  }
}
