// Universidad de la Costa - Computación Móvil - Flutter Application 12:
import 'package:flutter/material.dart';
import 'package:flutter_application_12/widgets/dev_signature.dart';

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
                Navigator.pushNamed(context, '/alert-dialog');
              },
              child: const Text(
                'Go to AlertDialog example',
                style: TextStyle(fontSize: 20, color: Colors.teal),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Go to new page
                Navigator.pushNamed(context, '/stack');
              },
              child: const Text(
                'Go to Stack example',
                style: TextStyle(fontSize: 20, color: Colors.brown),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Go to new page
                Navigator.pushNamed(context, '/painting');
              },
              child: const Text(
                'Go to Painting example',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }
}
