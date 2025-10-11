// Learn Flutter - Layout - Scrolling Widgets - ListView Example 02:
import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

class ToDo {
  final String description;
  final bool isComplete;

  ToDo({required this.description, required this.isComplete});
}

class Repository {
  static List<ToDo> fetchTodos() {
    return [
      ToDo(description: 'Learn Flutter basics', isComplete: true),
      ToDo(description: 'Build ListView example', isComplete: true),
      ToDo(description: 'Test ListView.builder in debug', isComplete: true),
      ToDo(description: 'Write documentation', isComplete: true),
      ToDo(description: 'Learn advanced UI/UX concepts', isComplete: false),
      ToDo(description: 'Dive into Firebase services', isComplete: false),
      ToDo(
        description: 'Go to Google Developer Groups events',
        isComplete: false,
      ),
    ];
  }
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ToDo> items = Repository.fetchTodos();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scrolling Widgets ListView Example 02'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            var item = items[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(item.description),
                  item.isComplete ? Text('Complete') : Text('Incomplete'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class BorderedImage extends StatelessWidget {
  const BorderedImage({super.key, this.width = 200, this.height = 200});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.network(
          'https://docs.flutter.dev/assets/images/docs/fwe/dash-search.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
