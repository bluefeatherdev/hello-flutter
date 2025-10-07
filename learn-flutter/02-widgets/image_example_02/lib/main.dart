// Learn Flutter - Widgets - Image Example 02:
import 'package:flutter/material.dart';

void main() {
  runApp(const ImageApp());
}

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ImageApp Example 02')),
        body: Center(
          child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
          ),
        ),
      ),
    );
  }
}
