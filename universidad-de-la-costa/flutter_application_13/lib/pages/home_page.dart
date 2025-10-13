// Universidad de la Costa - Computación Móvil - Flutter Application 13:
import 'package:flutter/material.dart';

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
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/fitness-tracker');
              },
              label: Text('Fitness Tracker'),
              icon: Icon(Icons.fitness_center_rounded),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/developer-portfolio');
              },
              label: Text('Developer Portfolio'),
              icon: Icon(Icons.person_add_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
