// Learn Flutter - Handling User Input - Chip Example:
import 'package:flutter/material.dart';

void main() {
  runApp(const ChipApp());
}

class ChipApp extends StatelessWidget {
  const ChipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Chip Sample')),
        body: Center(child: ChipExample()),
      ),
    );
  }
}

class ChipExample extends StatefulWidget {
  const ChipExample({super.key});

  @override
  State<ChipExample> createState() => _ChipExampleState();
}

class _ChipExampleState extends State<ChipExample> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: const SizedBox(
        width: 500,
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 4,
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                backgroundImage: AssetImage('assets/images/dash.png'),
              ),
              label: Text('Chef Dash'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundImage: AssetImage('assets/images/dash.png'),
              ),
              label: Text('Firefighter Dash'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundImage: AssetImage('assets/images/dash.png'),
              ),
              label: Text('Musician Dash'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundImage: AssetImage('assets/images/dash.png'),
              ),
              label: Text('Artist Dash'),
            ),
          ],
        ),
      ),
    );
  }
}
