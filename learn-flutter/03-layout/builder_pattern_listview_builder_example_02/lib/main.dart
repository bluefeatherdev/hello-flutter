// Learn Flutter - Layout - Builder Pattern - ListView.builder Example 02:
import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewBuilderApp());
}

// Class for ToDo model
class ToDo {
  final String description;
  final bool isComplete;

  ToDo({required this.description, required this.isComplete});
}

// Simulated repository using async
class Repository {
  static Future<List<ToDo>> fetchTodos() async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 2));
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

class ListViewBuilderApp extends StatelessWidget {
  const ListViewBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Builder Pattern ListView.builder Example 02'),
        ),
        body: FutureBuilder<List<ToDo>>(
          future: Repository.fetchTodos(),
          builder: (context, snapshot) {
            // 1. While it waits
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            // 2. If an error occurs:
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            // 3. If there is data:
            if (snapshot.hasData) {
              final items = snapshot.data!;
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    color: index % 2 == 0
                        ? Colors.grey.shade100
                        : Colors.transparent,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(item.description, style: TextStyle(fontSize: 16)),
                        Icon(
                          item.isComplete ? Icons.check_circle : Icons.cancel,
                          color: item.isComplete
                              ? Colors.green
                              : Colors.deepOrange,
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            // 4. If it is empty:
            return const Center(child: Text('No ToDos found.'));
          },
        ),
      ),
    );
  }
}
