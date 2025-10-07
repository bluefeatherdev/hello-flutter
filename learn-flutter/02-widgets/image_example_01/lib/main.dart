// Learn Flutter - Widgets - Image Example 01:
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
        appBar: AppBar(title: const Text('ImageApp Example 01')),
        body: Center(
          child: const Image(
            image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
