// Learn Flutter - Widgets - IconButton Example 04:
import 'package:flutter/material.dart';

void main() => runApp(const IconButtonExampleApp());

class IconButtonExampleApp extends StatelessWidget {
  const IconButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      title: 'Icon Button Types',
      home: Scaffold(
        appBar: AppBar(title: const Text('IconButton Sample 04')),
        body: const ButtonTypesExample(),
      ),
    );
  }
}

class ButtonTypesExample extends StatelessWidget {
  const ButtonTypesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          Spacer(),
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Standard icon button
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.filter_drama),
          ),

          // Filled icon button
          IconButton.filled(
            onPressed: onPressed,
            icon: const Icon(Icons.filter_drama),
          ),

          // Filled tonal icon button
          IconButton.filledTonal(
            onPressed: onPressed,
            icon: const Icon(Icons.filter_drama),
          ),

          // Outlined icon button
          IconButton.outlined(
            onPressed: onPressed,
            icon: const Icon(Icons.filter_drama),
          ),
        ],
      ),
    );
  }
}
