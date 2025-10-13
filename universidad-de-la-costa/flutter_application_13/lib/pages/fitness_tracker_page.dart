// Universidad de la Costa - Computación Móvil - Flutter Application 13:
import 'package:flutter/material.dart';

class FitnessTrackerPage extends StatelessWidget {
  const FitnessTrackerPage({super.key});

  final List<Map<String, dynamic>> exercises = const [
    {
      'name': 'Cardio',
      'reps': 0,
      'minutes': 0,
      'image': 'cardio.png',
      'color': Colors.red,
    },
    {
      'name': 'Biceps',
      'reps': 0,
      'minutes': 0,
      'image': 'biceps.png',
      'color': Colors.blue,
    },
    {
      'name': 'Shoulders',
      'reps': 0,
      'minutes': 0,
      'image': 'shoulders.png',
      'color': Colors.orange,
    },
    {
      'name': 'Forearms',
      'reps': 0,
      'minutes': 0,
      'image': 'forearms.png',
      'color': Colors.green,
    },
    {
      'name': 'Back',
      'reps': 0,
      'minutes': 0,
      'image': 'back.png',
      'color': Colors.purple,
    },
    {
      'name': 'Triceps',
      'reps': 0,
      'minutes': 0,
      'image': 'triceps.png',
      'color': Colors.deepOrange,
    },
    {
      'name': 'Legs',
      'reps': 0,
      'minutes': 0,
      'image': 'legs.png',
      'color': Colors.indigo,
    },
    {
      'name': 'Abs',
      'reps': 0,
      'minutes': 0,
      'image': 'abs.png',
      'color': Colors.brown,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fitness Tracker Page')),
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hi Jesús',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Let\'s check your activity',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Image.asset('assets/images/avatar.png'),
              ],
            ),
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Finished',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '12',
                          style: TextStyle(
                            fontSize: 46,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('Completed', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'In process',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Text>[
                                  Text(
                                    '3',
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Workouts',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'Time spent',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Text>[
                                  Text(
                                    '69',
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Minutes',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      'Discover new workouts',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: exercises.length,
                      itemBuilder: (context, index) {
                        final item = exercises[index];
                        return CustomTrackerCard(
                          name: item['name'],
                          reps: item['reps'],
                          minutes: item['minutes'],
                          image: item['image'],
                          color: item['color'],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Keep the process!',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTrackerCard extends StatelessWidget {
  final String name;
  final int reps;
  final int minutes;
  final String image;
  final Color color;

  const CustomTrackerCard({
    super.key,
    required this.name,
    required this.reps,
    required this.minutes,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 46),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$reps Exercises',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$minutes Minutes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Image.asset('assets/images/$image')),
          ],
        ),
      ),
    );
  }
}
