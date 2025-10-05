// Learn Flutter - Widgets - ListView Example 03:
import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

final List<String> entries = <String>['A', 'B', 'C', 'D', 'E'];
final List<int> colorCodes = <int>[900, 700, 500, 300, 100];

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListViewApp Example 03')),
        body: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.teal[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: entries.length,
          ),
        ),
      ),
    );
  }
}
