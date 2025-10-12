// Universidad de la Costa - Computación Móvil - Flutter Application 12:
import 'package:flutter/material.dart';
import 'package:flutter_application_12/widgets/dev_signature.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Example')),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 20,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.teal.shade800,
            ),
          ),
          Positioned(
            top: 20,
            left: 40,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.teal.shade600,
            ),
          ),
          Positioned(
            top: 40,
            left: 60,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.teal.shade400,
            ),
          ),
          Positioned(
            top: 60,
            left: 80,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.teal.shade200,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }
}
