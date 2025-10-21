// Learn Flutter - Widgets - IconButton Example 02:
import 'package:flutter/material.dart';

void main() => runApp(const IconButtonExampleApp());

class IconButtonExampleApp extends StatelessWidget {
  const IconButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('IconButton Sample 02')),
        body: Center(child: IconButtonExample()),
      ),
    );
  }
}

class IconButtonExample extends StatefulWidget {
  const IconButtonExample({super.key});

  @override
  State<IconButtonExample> createState() => _IconButtonExampleState();
}

class _IconButtonExampleState extends State<IconButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        addIconButton(
          icon: Icon(Icons.favorite),
          iconSize: 24.0,
          tooltip: 'Add to favorite 1',
          text: 'IconButton 1',
        ),
        addIconButton(
          icon: Icon(Icons.favorite),
          iconSize: 34.0,
          tooltip: 'Add to favorite 2',
          text: 'IconButton 2',
        ),
        addIconButton(
          icon: Icon(Icons.favorite),
          iconSize: 44.0,
          tooltip: 'Add to favorite 3',
          text: 'IconButton 3',
        ),
      ],
    );
  }

  Widget addIconButton({
    required Icon icon,
    double? iconSize,
    String? tooltip,
    String? text,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: icon,
            iconSize: iconSize,
            tooltip: tooltip,
          ),
          if (text != null) Text(text),
        ],
      ),
    );
  }
}
