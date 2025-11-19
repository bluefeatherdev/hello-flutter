// Learn Flutter - Firebase - Minimal Social Media App:
import 'package:flutter/material.dart';

// Display error message to user
void displayMessageToUser(String message, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(title: Text(message));
    },
  );
}
