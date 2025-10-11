// Universidad de la Costa - Computación Móvil - Flutter Application 11:
import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/dev_signature.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Go to new page
                Navigator.pushNamed(context, '/healthy-snacks');
              },
              child: const Text(
                'Go to Healthy Snacks',
                style: TextStyle(fontSize: 20, color: Colors.teal),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Go to new page
                Navigator.pushNamed(context, '/topics');
              },
              child: const Text(
                'Go to Topics',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Go to new page
                Navigator.pushNamed(context, '/trends');
              },
              child: const Text(
                'Go to Trends',
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }
}
