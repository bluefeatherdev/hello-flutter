// Learn Flutter - Widgets - ListTile Example 07
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
      appBar: AppBar(title: const Text('ListTile Sample 07')),
      body: const Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('These ListTiles are expanded '),
              ),
            ),
            Expanded(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('to fill the available spaced.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
