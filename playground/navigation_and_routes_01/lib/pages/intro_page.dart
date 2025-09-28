// Playground - Navigation and Routes Application 01:
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Intro Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Go to new page
            Navigator.pushNamed(context, '/homepage');
          },
          child: const Text('Go to Home'),
        ),
      ),
    );
  }
}
