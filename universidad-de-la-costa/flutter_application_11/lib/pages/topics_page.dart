// Universidad de la Costa - Computación Móvil - Flutter Application 11:
import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/dev_signature.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Topics Pages')),
      body: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            makeTopicContainer('Flutter', '161 Post', Colors.blue.shade700),
            makeTopicContainer('Dart', '138 Post', Colors.blue.shade500),
            makeTopicContainer('Firebase', '115 Post', Colors.blue.shade400),
            makeTopicContainer('GitHub', '92 Post', Colors.blue.shade200),
            makeTopicContainer('CI/CD', '69 Post', Colors.blue.shade100),
            makeTopicContainer('AI', '46 Post', Colors.blue.shade50),
          ],
        ),
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }

  // Custom Topic Container
  Widget makeTopicContainer(String title, String subtitle, Color color) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: const TextStyle(fontSize: 23)),
          Text(subtitle, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
