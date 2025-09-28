// Playground - Navigation and Routes Application 02:
import 'package:flutter/material.dart';
import 'package:navigation_and_routes_02/pages/home_page.dart';
import 'package:navigation_and_routes_02/pages/intro_page.dart';
import 'package:navigation_and_routes_02/pages/contact_page.dart';

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
        '/intro': (context) => const IntroPage(),
        '/home': (context) => const HomePage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
