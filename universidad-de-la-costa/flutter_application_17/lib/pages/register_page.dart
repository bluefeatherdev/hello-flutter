// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_17/database/firestore_database.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Text field controllers
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController zoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  List<String> selectedDays = [];
  final List<String> daysOfWeek = [
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo',
  ];
  bool isLoading = false;

  // Sign-Up method
  Future<void> signUp() async {
    if (firstNameController.text.trim().isEmpty ||
        lastNameController.text.trim().isEmpty ||
        emailController.text.trim().isEmpty ||
        phoneController.text.trim().isEmpty ||
        zoneController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty ||
        confirmPasswordController.text.trim().isEmpty) {
      showErrorDialog('Por favor completa todos los campos');
      return;
    }

    if (passwordController.text.trim() !=
        confirmPasswordController.text.trim()) {
      showErrorDialog('Las contraseñas no coinciden');
      return;
    }

    if (selectedDays.isEmpty) {
      showErrorDialog('Selecciona al menos un día de disponibilidad');
      return;
    }

    setState(() => isLoading = true);

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );

      FirestoreDatabase database = FirestoreDatabase();
      await database.createUserDocument(
        uid: userCredential.user!.uid,
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        email: emailController.text.trim(),
        phone: phoneController.text.trim(),
        zone: zoneController.text.trim(),
        availableDays: selectedDays,
      );

      if (mounted) Navigator.pushReplacementNamed(context, '/');
    } on FirebaseAuthException catch (e) {
      String message = 'Error al crear cuenta';
      if (e.code == 'email-already-in-use') {
        message = 'Ya existe una cuenta con este correo';
      }
      showErrorDialog(message);
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  // Build UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo
              Icon(Icons.person, size: 80),

              const SizedBox(height: 25),

              // App name
              Text('App name here'),

              const SizedBox(height: 25),

              // First name textfield
              TextField(
                controller: firstNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Type your first name...',
                ),
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // Last name textfield
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Type your last name...',
                ),
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // Email textfield
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Type your email...',
                ),
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // Phone textfield
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Type your phone...',
                ),
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // Zone textfield
              TextField(
                controller: zoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Type your zone...',
                ),
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // Password textfield
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Type your password...',
                ),
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // Repeat password textfield
              TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Repeat password...',
                ),
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // Sign Up button
              ElevatedButton(onPressed: signUp, child: const Text('Sign Up')),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login-page');
                    },
                    child: Text(
                      ' Log in',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
