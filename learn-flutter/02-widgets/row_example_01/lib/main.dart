// Learn Flutter - Widgets - Row Application 01:
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Deliver features faster',
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(child: FittedBox(child: FlutterLogo())),
            ],
          ),
        ),
      ),
    );
  }
}
