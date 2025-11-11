// Learn Flutter - Firebase - CRUD Example 01:
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud_example_01/firebase_options.dart';
import 'package:firebase_crud_example_01/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
