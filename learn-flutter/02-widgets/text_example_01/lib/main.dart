import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final String name = 'Jesús';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 100,
            height: 200,
            decoration: BoxDecoration(border: Border.all()),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  'Hello $name, how are you?',
                ),
                const SizedBox(height: 23),
                Text(
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  'Hello $name, how are you?',
                ),
                const SizedBox(height: 23),
                Text(
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  'Hello $name, how are you?',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
