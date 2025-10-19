// Learn Flutter - Widgets - FloatingActionButton Example 03:
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
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    Widget titleBox(String title) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: colorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            title,
            style: TextStyle(color: colorScheme.onInverseSurface),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('FloatingActionButton Sample 03')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Surface color mapping.
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FloatingActionButton.large(
                  onPressed: () {},
                  foregroundColor: colorScheme.primary,
                  backgroundColor: colorScheme.surface,
                  child: const Icon(Icons.edit_outlined),
                ),
                const SizedBox(height: 20),
                titleBox('Surface'),
              ],
            ),
            // Secondary color mapping.
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FloatingActionButton.large(
                  onPressed: () {},
                  foregroundColor: colorScheme.onSecondaryContainer,
                  backgroundColor: colorScheme.secondary,
                  child: const Icon(Icons.edit_outlined),
                ),
                const SizedBox(height: 20),
                titleBox('Secondary'),
              ],
            ),
            // Tertiary color mapping.
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FloatingActionButton.large(
                  onPressed: () {},
                  foregroundColor: colorScheme.onTertiaryContainer,
                  backgroundColor: colorScheme.tertiaryContainer,
                  child: const Icon(Icons.edit_outlined),
                ),
                const SizedBox(height: 20),
                titleBox('Tertiary'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
