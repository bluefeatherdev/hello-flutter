// Learn Flutter - Widgets - ListView Example 05:
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
        appBar: AppBar(title: Text('ListViewApp Example 05')),
        body: Center(
          child: Column(
            children: <Widget>[
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: const <Widget>[
                  Text('I\'m dedicating every day to you'),
                  Text('Domestic life was never quite my style'),
                  Text('When you smile, you knock me out, I fall apart'),
                  Text('And I thought I was so smart'),
                ],
              ),
              const SizedBox(height: 20),
              CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(20.0),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(<Widget>[
                        const Text('I\'m dedicating every day to you'),
                        const Text('Domestic life was never quite my style'),
                        const Text(
                          'When you smile, you knock me out, I fall apart',
                        ),
                        const Text('And I thought I was so smart'),
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
