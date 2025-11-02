// Learn Flutter - Widgets - ListTile Example 09
import 'package:flutter/material.dart';

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListTileExample());
  }
}

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile Sample 09')),
      body: ListView.builder(
        itemCount: 23,
        itemBuilder: (context, index) {
          return ListTile(
            leading: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {},
              child: Container(
                width: 48,
                height: 48,
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                alignment: Alignment.center,
                child: const CircleAvatar(),
              ),
            ),
            title: Text('title $index'),
            dense: false,
          );
        },
      ),
    );
  }
}
