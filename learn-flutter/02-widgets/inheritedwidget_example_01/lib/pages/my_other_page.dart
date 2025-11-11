// Learn Flutter - Widget - InheritedWidget Example 01:
import 'package:flutter/material.dart';
import 'package:inheritedwidget_example_01/main.dart';

class MyOtherPage extends StatelessWidget {
  const MyOtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Other Page')),
      body: FrogColor(
        color: Colors.teal,
        child: Text(
          'Hello Frog',
          // style: TextStyle(color: FrogColor.of(context).color), ERROR
        ),
      ),
    );
  }
}
