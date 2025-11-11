// Learn Flutter - Widget - InheritedWidget Example 01:
import 'package:flutter/material.dart';
import 'package:inheritedwidget_example_01/main.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Page')),
      body: FrogColor(
        color: Colors.teal,
        child: Builder(
          builder: (innerContext) {
            return Text(
              'Hello Frog',
              style: TextStyle(color: FrogColor.of(innerContext).color),
            );
          },
        ),
      ),
    );
  }
}
