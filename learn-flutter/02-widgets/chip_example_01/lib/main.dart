// Learn Flutter - Widgets - Chip Example 01
import 'package:flutter/material.dart';

void main() => runApp(const ChipApp());

class ChipApp extends StatelessWidget {
  const ChipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Chip Sample 01')),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Wrap(
              spacing: 12.0,
              children: [
                ChipExample(),
                ChipExample(),
                ChipExample(),
                ChipExample(),
                ChipExample(),
                ChipExample(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChipExample extends StatelessWidget {
  const ChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(backgroundColor: Colors.grey.shade800),
      label: const Text('Jesús Domínguez'),
    );
  }
}
