// Universidad de la Costa - Computación Móvil - Flutter Application 16:
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({super.key});

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  // Load Data from SharedPreferences before building UI
  @override
  void initState() {
    super.initState();
    loadData();
  }

  // Set username variables to SharedPreferences
  String name = '';
  String role = '';

  // Load Data from SharedPreferences
  Future<void> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {
      name = preferences.getString('name') ?? '';
      role = preferences.getString('role') ?? '';
    });
  }

  // Build UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Greeting text
            const Text(
              'Welcome!',
              style: TextStyle(fontSize: 23, color: Colors.grey),
            ),

            // Show data
            Text(name, style: TextStyle(fontSize: 20, color: Colors.indigo)),
            Text(role, style: TextStyle(fontSize: 20, color: Colors.blueGrey)),

            // Exit button
            ElevatedButton(
              onPressed: () async {
                final preferences = await SharedPreferences.getInstance();

                await preferences.clear();
                if (!mounted) return;
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text('Exit'),
            ),
          ],
        ),
      ),
    );
  }
}
