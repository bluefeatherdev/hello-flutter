// Learn Flutter - Widgets - ListView Example 01:
import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListViewApp Example 01')),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.teal[900],
                child: Center(
                  child: Text(
                    'Entry A',
                    style: TextStyle(color: Colors.tealAccent[100]),
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Colors.teal[700],
                child: Center(
                  child: Text(
                    'Entry B',
                    style: TextStyle(color: Colors.tealAccent),
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Colors.teal[500],
                child: Center(
                  child: Text(
                    'Entry C',
                    style: TextStyle(color: Colors.tealAccent[400]),
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Colors.teal[300],
                child: Center(
                  child: Text(
                    'Entry D',
                    style: TextStyle(color: Colors.tealAccent[400]),
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Colors.teal[100],
                child: Center(
                  child: Text(
                    'Entry E',
                    style: TextStyle(color: Colors.tealAccent[700]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
