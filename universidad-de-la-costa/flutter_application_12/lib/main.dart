// Universidad de la Costa - Computación Móvil - Flutter Application 12:
import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/alert_dialog_page.dart';
import 'package:flutter_application_12/pages/home_page.dart';
import 'package:flutter_application_12/pages/painting_page.dart';
import 'package:flutter_application_12/pages/stack_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application 12',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/alert-dialog': (context) => const AlertDialogPage(),
        '/stack': (context) => const StackPage(),
        '/painting': (context) => const PaintingPage(),
      },
    );
  }
}
