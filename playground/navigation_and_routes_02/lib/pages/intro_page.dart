// Playground - Navigation and Routes Application 01:
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Intro Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Go to new page
                Navigator.pushNamed(context, '/home');
              },
              child: const Text(
                'Go to Home',
                style: TextStyle(fontSize: 23, color: Colors.teal),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Go to new page
                Navigator.pushNamed(context, '/contact');
              },
              child: const Text(
                'Go to Contact',
                style: TextStyle(fontSize: 23, color: Colors.brown),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Made with \'\\u{2665}\' (♥) by Jesús Domínguez',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
