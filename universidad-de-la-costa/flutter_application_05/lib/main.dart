// Universidad de la Costa - Computación Móvil - Flutter Application 05:
import 'package:flutter/material.dart';

void main() => runApp(const RadioListTileApp());

class RadioListTileApp extends StatelessWidget {
  const RadioListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('RadioListTile App Sample')),
        body: const RadioListTileExample(),
      ),
    );
  }
}

enum Genders { female, male }

class RadioListTileExample extends StatefulWidget {
  const RadioListTileExample({super.key});

  @override
  State<RadioListTileExample> createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
  Genders? _gender = Genders.female;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RadioGroup<Genders>(
            groupValue: _gender,
            onChanged: (Genders? value) {
              setState(() {
                _gender = value;
              });
            },
            child: const Column(
              children: <Widget>[
                RadioListTile<Genders>(
                  title: Text('Female'),
                  value: Genders.female,
                ),
                RadioListTile<Genders>(
                  title: Text('Male'),
                  value: Genders.male,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => print('gender: $_gender'),
            child: const Text(
              'Send',
              style: TextStyle(fontSize: 19, color: Colors.teal),
            ),
          ),
        ],
      ),
    );
  }
}
