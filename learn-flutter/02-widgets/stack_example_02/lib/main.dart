// Learn Flutter - Widgets - Stack Example 02:
import 'package:flutter/material.dart';

void main() => runApp(const StackApp());

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Sample 02')),
        body: StackExample(),
      ),
    );
  }
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          children: <Widget>[
            Container(width: 250, height: 250, color: Colors.white),
            Container(
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.teal.withAlpha(0),
                    Colors.teal.shade400,
                    Colors.teal.shade900,
                  ],
                ),
              ),
              child: const Text(
                'Foreground Text',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
