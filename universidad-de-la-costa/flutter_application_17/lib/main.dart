// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/admins/add_tasks_page.dart';
import 'package:flutter_application_17/pages/admins/assign_managers_page.dart';
import 'package:flutter_application_17/pages/admins/parcelas_page.dart';
import 'package:flutter_application_17/pages/home_page.dart';
import 'package:flutter_application_17/pages/login_page.dart';
import 'package:flutter_application_17/pages/profile_page.dart';
import 'package:flutter_application_17/pages/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Huertos Urbanos',

      // Application routes
      routes: <String, WidgetBuilder>{
        '/': (context) => const HomePage(),
        '/login-page': (context) => const LoginPage(),
        '/register-page': (context) => const RegisterPage(),
        '/profile-page': (context) => const ProfilePage(),
        '/parcelas-page': (context) => const ParcelasPage(),
        '/assign-managers-page': (context) => const AssignManagersPage(),
        '/add-tasks-page': (context) => const AddTasksPage(),
      },
    );
  }
}
