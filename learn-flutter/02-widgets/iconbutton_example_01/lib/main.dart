// Learn Flutter - Widgets - IconButton Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const IconButtonExampleApp());

class IconButtonExampleApp extends StatelessWidget {
  const IconButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('IconButton Sample 01')),
        body: Center(child: IconButtonExample()),
      ),
    );
  }
}

double _volume = 0.0;

class IconButtonExample extends StatefulWidget {
  const IconButtonExample({super.key});

  @override
  State<IconButtonExample> createState() => _IconButtonExampleState();
}

class _IconButtonExampleState extends State<IconButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          onPressed: () {
            setState(() {
              _volume += 10;
            });
          },
          icon: const Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
        ),
        Text('Volume : $_volume'),
      ],
    );
  }
}
