// Learn Flutter - Widgets - FloatingActionButton Example 02:
import 'package:flutter/material.dart';

void main() => runApp(const FloatingActionButtonApp());

class FloatingActionButtonApp extends StatelessWidget {
  const FloatingActionButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FloatingActionButtonExample());
  }
}

class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FloatingActionButton Sample 02')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Small'),
                const SizedBox(width: 16),
                // An example of the small floating action button
                FloatingActionButton.small(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Regular'),
                const SizedBox(width: 16),
                // An example of the regular floating action button
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Large'),
                const SizedBox(width: 16),
                // An example of the large floating action button
                FloatingActionButton.large(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Extended'),
                const SizedBox(width: 16),
                // An example of the extended floating action button
                FloatingActionButton.extended(
                  onPressed: () {},
                  label: const Text('Add'),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
