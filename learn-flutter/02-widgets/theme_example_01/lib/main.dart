// Learn Flutter - Widgets - Theme Example 01
import 'package:flutter/material.dart';

void main() => runApp(const ThemeApp());

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Sample 01',
      theme: ThemeData(
        // Main colors
        primaryColor: Colors.teal,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
        // Global typography
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        // Button style
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
      home: const ThemeExample(),
    );
  }
}

class ThemeExample extends StatelessWidget {
  const ThemeExample({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Access to current theme

    return Scaffold(
      appBar: AppBar(title: const Text('Theme Sample 01')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Title with headlineLarge',
              style: theme.textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'This is a text with bodyMedium',
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Awesome Snackbar!'),
                    action: SnackBarAction(label: 'Action', onPressed: () {}),
                  ),
                );
              },
              child: const Text('Button with global style'),
            ),
          ],
        ),
      ),
    );
  }
}
