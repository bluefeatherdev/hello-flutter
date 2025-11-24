// Universidad de la Costa - Computación Móvil - Flutter Application 16:
import 'package:flutter/material.dart';
import 'package:flutter_application_16/pages/login_page.dart';
import 'package:flutter_application_16/pages/other_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginPage(),
        '/other-page': (context) => OtherPage(),
      },
    );
  }
}
