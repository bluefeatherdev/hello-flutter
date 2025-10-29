// Learn Flutter - Widgets - Builder Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const BuilderExampleApp());

class BuilderExampleApp extends StatelessWidget {
  const BuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BuilderExample());
  }
}

class BuilderExample extends StatelessWidget {
  const BuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Builder Sample 01')),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: TextButton(
              onPressed: () {
                print(Scaffold.of(context).hasAppBar);
              },
              child: const Text('hasAppBar'),
            ),
          );
        },
      ),
    );
  }
}
