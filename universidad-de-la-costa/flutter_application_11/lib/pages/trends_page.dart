// Universidad de la Costa - Computación Móvil - Flutter Application 11:
import 'package:flutter/material.dart';
import 'package:flutter_application_11/widgets/dev_signature.dart';

class TrendsPage extends StatelessWidget {
  const TrendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trends Page')),
      body: ListView(
        children: <Widget>[
          makeTrendContainer(
            context,
            'Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis.',
            Colors.grey.shade200,
          ),
          makeTrendContainer(
            context,
            'Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis.',
            Colors.grey.shade200,
          ),
          makeTrendContainer(
            context,
            'Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis.',
            Colors.grey.shade200,
          ),
        ],
      ),
      bottomNavigationBar: const DevSignature(),
    );
  }

  // Custom Trend Container
  Widget makeTrendContainer(BuildContext context, String text, Color color) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      constraints: const BoxConstraints(minHeight: 120),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset('assets/images/avatar.png', width: 50),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('John Doe', style: TextStyle(fontSize: 20)),
                  Text('Read 3 seconds ago'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(text, textAlign: TextAlign.justify),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () => print('Hello from IconButton...'),
                        icon: const Icon(Icons.thumb_up),
                      ),
                      Text('115 Likes'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.white,
                        ),
                      ),
                      Text('391 Views'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
