// Learn Flutter - Widgets - ListTile Example 08
import 'package:flutter/material.dart';

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListTileExample());
  }
}

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  int _act = 1;

  void _toggleAct() {
    setState(() {
      // Toggle between Act I and Act II
      _act = _act == 1 ? 2 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile Sample 08')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.flight_land),
            title: const Text("Trix's airplane"),
            subtitle: _act != 2
                ? const Text('The airplane is only in Act II.')
                : const Text('Airplane arriving'),
            enabled: _act == 2,
            onTap: () {
              debugPrint('ListTile tapped in Act $_act');
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Tapped in Act $_act')));
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleAct,
            child: Text('Toggle Act (current: $_act)'),
          ),
        ],
      ),
    );
  }
}
