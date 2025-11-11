// Learn Flutter - Widget - InheritedWidget Example 01:
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InheritedWidget Sample 01')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                // Go to 'My Page' using Navigator
                Navigator.pushNamed(context, '/my-page');
              },
              label: const Text('My Page'),
              icon: Icon(Icons.travel_explore),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // Go to 'My Other Page' using Navigator
                Navigator.pushNamed(context, '/my-other-page');
              },
              label: const Text('My Other Page'),
              icon: Icon(Icons.travel_explore),
            ),
          ],
        ),
      ),
    );
  }
}
