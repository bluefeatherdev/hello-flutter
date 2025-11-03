// Learn Flutter - Widgets - MediaQuery Example 01
import 'package:flutter/material.dart';

void main() => runApp(const MediaQueryApp());

class MediaQueryApp extends StatelessWidget {
  const MediaQueryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediaQuery Sample 01',
      home: const MediaQueryExample(),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Get screen size
    final Size screenSize = MediaQuery.sizeOf(context);
    // 2. Detect orientation
    final Orientation orientation = MediaQuery.orientationOf(context);
    // 3. Get system text scale factor
    final TextScaler textScaler = MediaQuery.textScalerOf(context);

    return Scaffold(
      appBar: AppBar(title: const Text('MediaQuery Sample 01')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 1. Using screen size
            Container(
              width: screenSize.width * 0.8,
              height: 100,
              color: Colors.blue.shade700,
              child: Center(
                child: Text(
                  'Screen width: ${screenSize.width.toStringAsFixed(0)} px',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // 2. Using orientation
            Text('Orientation: $orientation', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            // 3. Using text scale factor
            Text(
              'Scaled text example\n$textScaler',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16 * textScaler.scale(1.0),
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
