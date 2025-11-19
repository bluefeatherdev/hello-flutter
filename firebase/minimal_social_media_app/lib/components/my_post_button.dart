// Learn Flutter - Firebase - Minimal Social Media App:
import 'package:flutter/material.dart';

class MyPostButton extends StatelessWidget {
  const MyPostButton({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(left: 10.0),
        child: Center(
          child: Icon(Icons.done, color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
