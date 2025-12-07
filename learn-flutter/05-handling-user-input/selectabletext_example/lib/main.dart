// Learn Flutter - Handling User Input - SelectableText Example:
import 'package:flutter/material.dart';

void main() {
  runApp(const SelectableTextApp());
}

class SelectableTextApp extends StatelessWidget {
  const SelectableTextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SelectableText Sample')),
        body: Center(
          child: SelectableText(
            'Two households, both alike in dignity,\n'
            'In fair Verona, where we lay our scene,\n'
            'From ancient grudge break to new mutiny,\n'
            'Where civil blood makes civil hands unclean.\n'
            'From forth the fatal loins of these two foes.',
          ),
        ),
      ),
    );
  }
}
