// Learn Flutter - Widgets - SliverAppBar Application 01:
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverAppBar Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const SliverAppBarExample(),
    );
  }
}

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            floating: false, // AppBar will scroll with the content
            pinned: true, // AppBar remains visible at the top
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Available seats'),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle),
                tooltip: 'Add new entry',
                onPressed: () {
                  // For debugging, show a SnackBar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Add button pressed')),
                  );
                },
              ),
            ],
          ),
          // Example content: a long list to make scrolling visible
          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return ListTile(
                leading: const Icon(Icons.event_seat),
                title: Text('Seat $index'),
              );
            }, childCount: 30), // enough items to scroll
          ),
        ],
      ),
    );
  }
}
