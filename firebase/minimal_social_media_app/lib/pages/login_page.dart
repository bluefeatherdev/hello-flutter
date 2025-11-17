// Learn Flutter - Firebase - Minimal Social Media App:
import 'package:flutter/material.dart';
import 'package:minimal_social_media_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  // Text controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              // logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),

              // app name
              Text('M I N I M AL', style: TextStyle(fontSize: 20)),

              const SizedBox(height: 25),

              // email textfield
              MyTextField(
                hintText: '',
                obscureText: false,
                controller: emailController,
              ),

              // password textfield

              // forgot password

              // sign in button

              // don't have an account? Register here
            ],
          ),
        ),
      ),
    );
  }
}
