// Learn Flutter - Widgets - Flexible Example 03:
import 'package:flutter/material.dart';

void main() => runApp(const FlexibleApp());

class FlexibleApp extends StatelessWidget {
  const FlexibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flexible Sample 03')),
        body: FlexFitComparison(),
      ),
    );
  }
}

class FlexFitComparison extends StatelessWidget {
  const FlexFitComparison({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Case 1: Flexible with fit: loose and fixed size
        Expanded(
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Container(
                  width: 80, // respected
                  color: Colors.teal[800],
                  child: const Center(
                    child: Text(
                      'Flexible\nflex=1\nloose\nwidth=80',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text(
                      'Remaining space',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        // Case 2: Flexible with fit: tight and fixed size
        Expanded(
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  width: 80, // ignored in the horizontal direction
                  color: Colors.teal[800],
                  child: const Center(
                    child: Text(
                      'Flexible\nflex=1\ntight\nwidth=80',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text(
                      'Remaining space',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        // Case 3: Expanded (equivalent to Flexible with tight)
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.teal[800],
                  child: const Center(
                    child: Text(
                      'Expanded\nflex=2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.teal[600],
                  child: const Center(
                    child: Text(
                      'Expanded\nflex=1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        // Case 4: Without Flexible, fixed size
        Expanded(
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                color: Colors.blue[800],
                child: const Center(
                  child: Text(
                    'Container\nwidth=100',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                color: Colors.blue[600],
                child: const Center(
                  child: Text(
                    'Container\nwidth=100',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text(
                      'Remaining space',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
