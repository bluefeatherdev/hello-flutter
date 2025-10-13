// Universidad de la Costa - Computación Móvil - Flutter Application 13:
import 'package:flutter/material.dart';
import 'package:flutter_application_13/pages/home_page.dart';
import 'package:flutter_application_13/pages/fitness_tracker_page.dart';
import 'package:flutter_application_13/pages/developer_portfolio_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application 12',
      routes: {
        '/': (context) => const HomePage(),
        '/fitness-tracker': (context) => const FitnessTrackerPage(),
        '/developer-portfolio': (context) => const DeveloperPortfolioPage(),
      },
    );
  }
}
