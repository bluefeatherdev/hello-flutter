// Universidad de la Costa - Computación Móvil - Flutter Application 08:
import 'package:flutter/material.dart';

void main() => runApp(const ContainerApp());

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ContainerAppExample());
  }
}

class ContainerAppExample extends StatefulWidget {
  const ContainerAppExample({super.key});

  @override
  State<ContainerAppExample> createState() => _ContainerAppExampleState();
}

class _ContainerAppExampleState extends State<ContainerAppExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container App Example')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),

        decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        child: const Text(
          'Hello, Flutter!',
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
      ),
    );
  }
}
