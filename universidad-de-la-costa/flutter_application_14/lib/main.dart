// Universidad de la Costa - Computación Móvil - Flutter Application 14:
import 'package:flutter/material.dart';

void main() => runApp(const WellnessTrackerApp());

class WellnessTrackerApp extends StatelessWidget {
  const WellnessTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const WellnessTrackerExample());
  }
}

class WellnessTrackerExample extends StatefulWidget {
  const WellnessTrackerExample({super.key});

  @override
  State<WellnessTrackerExample> createState() => _WellnessTrackerExampleState();
}

class _WellnessTrackerExampleState extends State<WellnessTrackerExample> {
  final int weeklyGoals = 0;
  final String fitnessLevel = 'Beginner';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              // User profile card
              Card(
                child: SizedBox(
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('assets/images/avatar.png', width: 80),
                          Text(
                            'Jesús Domínguez',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Weekly goals: $weeklyGoals',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Fitness Level: $fitnessLevel',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            '"We are what we repeatedly do."',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // User stats panel
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      child: SizedBox(
                        height: 100,
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Activity Total',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 100,
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Calories Total',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // User activity log
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey.shade100),
                  child: Center(child: const Text('User Activity List')),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 500,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Add Activity Form'),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Close'),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Submit'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        label: const Text('Add'),
        icon: Icon(Icons.add),
      ),
    );
  }
}
