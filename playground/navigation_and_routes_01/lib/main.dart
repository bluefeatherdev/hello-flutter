// Playground - Navigation and Routes Application 01:
import 'package:flutter/material.dart';
import 'package:navigation_and_routes_01/pages/home_page.dart';
import 'package:navigation_and_routes_01/pages/intro_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const IntroPage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/intropage': (context) => const IntroPage(),
      },
    );
  }
}
