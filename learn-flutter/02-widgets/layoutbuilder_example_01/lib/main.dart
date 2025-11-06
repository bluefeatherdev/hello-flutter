// Learn Flutter - Widgets - LayoutBuilder Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const LayoutBuilderApp());

class LayoutBuilderApp extends StatelessWidget {
  const LayoutBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LayoutBuilderExample());
  }
}

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Sample 01')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildNormalContainer();
          } else {
            return _buildWideContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.blue.shade700,
      ),
    );
  }

  Widget _buildWideContainer() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(height: 100.0, width: 100.0, color: Colors.teal.shade600),
          Container(height: 100.0, width: 100.0, color: Colors.grey.shade700),
        ],
      ),
    );
  }
}
