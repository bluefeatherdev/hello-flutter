// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/home_page.dart';
import 'package:flutter_application_17/pages/profile_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Usuario autenticado -> ir a Profile
          if (snapshot.hasData) {
            return const ProfilePage();
          }
          // No autenticado -> mostrar HomePage
          else {
            return const HomePage();
          }
        },
      ),
    );
  }
}