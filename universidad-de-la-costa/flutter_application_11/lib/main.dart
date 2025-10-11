// Universidad de la Costa - Computación Móvil - Flutter Application 11:
import 'package:flutter/material.dart';
import 'package:flutter_application_11/pages/healthy_snacks_page.dart';
import 'package:flutter_application_11/pages/home_page.dart';
import 'package:flutter_application_11/pages/topics_page.dart';
import 'package:flutter_application_11/pages/trends_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application 11',
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/healthy-snacks': (context) => const HealthySnacksPage(),
        '/topics': (context) => const TopicsPage(),
        '/trends': (context) => const TrendsPage(),
      },
    );
  }
}
