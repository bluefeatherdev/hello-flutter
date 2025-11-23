// Universidad de la Costa - Computación Móvil - Flutter Application 15:
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_15/firebase_options.dart';
import 'package:flutter_application_15/pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application 15',
      routes: <String, WidgetBuilder>{'/': (context) => const HomePage()},
    );
  }
}
