// Learn Flutter - Handling User Input - RichText Example:
import 'package:flutter/material.dart';

void main() => runApp(const RichTextApp());

class RichTextApp extends StatelessWidget {
  const RichTextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('RichText Sample')),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: 'Hello ',
              style: TextStyle(fontSize: 23, color: Colors.black),
              children: const <TextSpan>[
                TextSpan(
                  text: 'bold',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' world!'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
