// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // App title
            Text(
              'The best app for your plants',
              style: TextStyle(fontSize: 23),
            ),

            const SizedBox(height: 356),

            // Sign in button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login-page');
              },
              child: const Text('Sign In'),
            ),

            const SizedBox(height: 25),

            // Create an account link
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register-page');
              },
              child: Text('Create an account'),
            ),
          ],
        ),
      ),
    );
  }
}
