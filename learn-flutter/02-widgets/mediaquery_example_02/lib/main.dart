// Learn Flutter - Widgets - MediaQuery Example 02
import 'package:flutter/material.dart';

void main() => runApp(const MediaQueryApp());

class MediaQueryApp extends StatelessWidget {
  const MediaQueryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MediaQuery Sample 02',
      home: MediaQueryExample(),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Get safe area insets (padding around system UI)
    final EdgeInsets safePadding = MediaQuery.of(context).padding;

    return Scaffold(
      appBar: AppBar(title: const Text('MediaQuery Sample 02')),
      body: Container(
        // Apply safe are padding to the container
        padding: safePadding,
        color: Colors.teal.shade50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Safe area insets:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              'Top: ${safePadding.top.toStringAsFixed(1)} px',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Bottom: ${safePadding.bottom.toStringAsFixed(1)} px',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Left: ${safePadding.left.toStringAsFixed(1)} px',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              'Right: ${safePadding.right.toStringAsFixed(1)} px',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal.shade600,
              child: const Center(
                child: Text(
                  'This box respects safe area Padding',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
