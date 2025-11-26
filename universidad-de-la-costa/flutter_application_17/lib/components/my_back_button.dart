// Universidad de la Costa - Computación Móvil - Flutter Application 17:
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
