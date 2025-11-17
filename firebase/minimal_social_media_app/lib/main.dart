// Learn Flutter - Firebase - Minimal Social Media App:
import 'package:flutter/material.dart';
import 'package:minimal_social_media_app/pages/login_page.dart';
import 'package:minimal_social_media_app/theme/dark_mode.dart';
import 'package:minimal_social_media_app/theme/light_mode.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minimal Social Media App',
      home: LoginPage(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
