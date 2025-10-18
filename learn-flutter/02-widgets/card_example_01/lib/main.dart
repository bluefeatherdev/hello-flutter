// Learn Flutter - Widgets - Card Example 01:
import 'package:flutter/material.dart';

void main() => runApp(const CardExampleApp());

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Sample 01')),
        body: CardExample(),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(onPressed: () {}, child: const Text('BUY TICKETS')),
                const SizedBox(width: 8),
                TextButton(onPressed: () {}, child: const Text('LISTEN')),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
