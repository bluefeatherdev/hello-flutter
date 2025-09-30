// Universidad de la Costa - Computación Móvil - Flutter Application 10:
import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/dev_signature.dart';

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
                Navigator.pushNamed(context, '/bmi');
              },
              child: const Text(
                'Go to BMI Calculator',
                style: TextStyle(fontSize: 20, color: Colors.teal),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Go to new page
                Navigator.pushNamed(context, '/wage');
              },
              child: const Text(
                'Go to Wage Calculator',
                style: TextStyle(fontSize: 20, color: Colors.brown),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }
}
