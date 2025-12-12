// Learn Flutter - Handling User Input - Radio Example
import 'package:flutter/material.dart';

void main() => runApp(const RadioApp());

class RadioApp extends StatelessWidget {
  const RadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Radio Sample')),
        body: Center(child: const RadioExample()),
      ),
    );
  }
}

enum Character { musician, chef, firefighter, artist }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  Character? _character = Character.musician;

  void setCharacter(Character? value) {
    setState(() {
      _character = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RadioGroup(
      groupValue: _character,
      onChanged: setCharacter,
      child: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Musician'),
            leading: Radio<Character>(value: Character.musician),
          ),
          ListTile(
            title: const Text('Chef'),
            leading: Radio<Character>(value: Character.chef),
          ),
          ListTile(
            title: const Text('Firefighter'),
            leading: Radio<Character>(value: Character.firefighter),
          ),
          ListTile(
            title: const Text('Artist'),
            leading: Radio<Character>(value: Character.artist),
          ),
        ],
      ),
    );
  }
}
