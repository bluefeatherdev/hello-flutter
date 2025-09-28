// Universidad de la Costa - Computación Móvil - Flutter Application 10:
import 'package:flutter/material.dart';
import 'package:flutter_application_10/pages/home_page.dart';
import 'package:flutter_application_10/pages/wage_page.dart';
import 'package:flutter_application_10/pages/bmi_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/bmi': (context) => const BmiPage(),
        '/wage': (context) => const WagePage(),
      },
    );
  }
}
