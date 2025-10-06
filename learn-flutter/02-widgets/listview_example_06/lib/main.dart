// Learn Flutter - Widgets - ListView Example 06:
import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

final List<dynamic> entries = <dynamic>[];

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListViewApp Example 06')),
        body: entries.isNotEmpty
            ? ListView.builder(
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item ${index + 1}'));
                },
              )
            : const Center(child: Text('No items')),
      ),
    );
  }
}
