// Universidad de la Costa - Computación Móvil - Flutter Application 16:
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Initial variables
  String result = '';
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Check user session before building UI
  @override
  void initState() {
    super.initState();
    _verifySession();
  }

  // Check user session before building UI
  Future<void> _verifySession() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? name = preferences.getString('name');
    String? role = preferences.getString('role');

    if (name != null && role != null) {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/other-page');
    }
  }

  // Verify user typed data when login
  void verify() async {
    String username = usernameController.text;
    String password = passwordController.text;

    SharedPreferences preferences = await SharedPreferences.getInstance();

    if (username == 'bluefeather' && password == '123') {
      await preferences.setString('name', 'Jesús Domínguez');
      await preferences.setString('role', 'Administrator');

      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/other-page');
    } else {
      setState(() {
        result = 'Incorrect data';
      });
    }
  }

  // Build UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Greeting text
              const Text(
                'Welcome!',
                style: TextStyle(fontSize: 23, color: Colors.grey),
              ),

              // Username text field
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Type your username...',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 10),

              // Password text field
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Type your password...',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 10),

              // Submit button
              ElevatedButton(onPressed: verify, child: const Text('Submit')),

              const SizedBox(height: 10),

              // Result text
              Text(result, style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
