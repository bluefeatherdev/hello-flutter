// Learn Flutter - Layout - Multiple Widgets - Row Column Example
import 'package:flutter/material.dart';

void main() {
  runApp(const RowColumnExample());
}

class RowColumnExample extends StatelessWidget {
  const RowColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout multiple Widgets with Row and Column'),
        ),
        body: Row(
          children: <Widget>[
            Column(children: <Widget>[BorderedImage(), Text('Dash 1')]),
            Column(children: <Widget>[BorderedImage(), Text('Dash 2')]),
            Column(children: <Widget>[BorderedImage(), Text('Dash 3')]),
          ],
        ),
      ),
    );
  }
}

class BorderedImage extends StatelessWidget {
  const BorderedImage({super.key, this.width = 200, this.height = 200});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          'https://docs.flutter.dev/assets/images/docs/fwe/dash-search.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
