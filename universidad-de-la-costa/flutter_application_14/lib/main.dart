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

final Map<int, Map<String, dynamic>> entries = {
  0: {
    'activityName': 'Running',
    'durationMinutes': 30,
    'caloriesBurned': 300,
    'activityDate': '23-10-2025',
    'activityType': 'Aerobic',
  },
  1: {
    'activityName': 'Weightlifting',
    'durationMinutes': 45,
    'caloriesBurned': 250,
    'activityDate': '24-10-2025',
    'activityType': 'Anaerobic',
  },
  2: {
    'activityName': 'Cycling',
    'durationMinutes': 45,
    'caloriesBurned': 400,
    'activityDate': '25-10-2025',
    'activityType': 'Aerobic',
  },
  3: {
    'activityName': 'Push-ups',
    'durationMinutes': 10,
    'caloriesBurned': 100,
    'activityDate': '26-10-2025',
    'activityType': 'Anaerobic',
  },
  4: {
    'activityName': 'Swimming',
    'durationMinutes': 40,
    'caloriesBurned': 350,
    'activityDate': '27-10-2025',
    'activityType': 'Aerobic',
  },
  5: {
    'activityName': 'Pull-ups',
    'durationMinutes': 8,
    'caloriesBurned': 90,
    'activityDate': '28-10-2025',
    'activityType': 'Anaerobic',
  },
  6: {
    'activityName': 'Rowing',
    'durationMinutes': 25,
    'caloriesBurned': 280,
    'activityDate': '29-10-2025',
    'activityType': 'Aerobic',
  },
  7: {
    'activityName': 'Squats',
    'durationMinutes': 15,
    'caloriesBurned': 120,
    'activityDate': '30-10-2025',
    'activityType': 'Anaerobic',
  },
  8: {
    'activityName': 'Jump Rope',
    'durationMinutes': 15,
    'caloriesBurned': 200,
    'activityDate': '31-10-2025',
    'activityType': 'Aerobic',
  },
  9: {
    'activityName': 'Lunges',
    'durationMinutes': 12,
    'caloriesBurned': 110,
    'activityDate': '01-11-2025',
    'activityType': 'Anaerobic',
  },
};

class WellnessTrackerExample extends StatefulWidget {
  const WellnessTrackerExample({super.key});

  @override
  State<WellnessTrackerExample> createState() => _WellnessTrackerExampleState();
}

class _WellnessTrackerExampleState extends State<WellnessTrackerExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _activityName;
  int? _durationMinutes;
  int? _caloriesBurned;
  String? _activityDate;
  String? _activityType;

  int weeklyGoals = 15;
  String fitnessLevel = 'Advanced';
  int activityTotal = 0;
  int caloriesBurned = 0;

  @override
  void initState() {
    super.initState();
    _updateStats();
  }

  void _updateStats() {
    activityTotal = entries.length;
    caloriesBurned = entries.values.fold<int>(
      0,
      (sum, item) => sum + (item['caloriesBurned'] as int),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WellnessTracker App')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              // User profile card
              Card(
                color: Colors.grey.shade800,
                child: SizedBox(
                  height: 190,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('assets/images/avatar.png', width: 80),
                          Text(
                            'Jesús Domínguez',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Weekly goals: $weeklyGoals',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Fitness Level: $fitnessLevel',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '"We are what we repeatedly do."',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
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
                      color: Colors.teal.shade800,
                      child: SizedBox(
                        height: 100,
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              '$activityTotal',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Activity Total',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.cyan.shade800,
                      child: SizedBox(
                        height: 100,
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              '$caloriesBurned',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Calories Total',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
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
                child: entries.isNotEmpty
                    ? ListView.builder(
                        itemCount: entries.length,
                        itemBuilder: (context, index) {
                          final key = entries.keys.elementAt(index);
                          final item = entries[key]!;
                          return customActivityLogCard(
                            item['activityName'],
                            item['durationMinutes'],
                            item['caloriesBurned'],
                            item['activityDate'],
                            item['activityType'],
                            () {
                              setState(() {
                                entries.remove(key);
                                _updateStats();
                              });
                            },
                          );
                        },
                      )
                    : const Center(child: Text('No items')),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(
                    context,
                  ).viewInsets.bottom, // sube con el teclado
                ),
                child: SizedBox(
                  height: 500,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(19),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Activity name',
                                ),
                                validator: (value) => value == ''
                                    ? 'Please type an activity name'
                                    : null,
                                onSaved: (value) => _activityName = value,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Duration minutes',
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value) => value == ''
                                    ? 'Please type duration minutes'
                                    : null,
                                onSaved: (value) => _durationMinutes =
                                    int.tryParse(value ?? '0'),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Calories burned',
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value) => value == ''
                                    ? 'Please type calories burned'
                                    : null,
                                onSaved: (value) => _caloriesBurned =
                                    int.tryParse(value ?? '0'),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Activity date',
                                ),
                                validator: (value) => value == ''
                                    ? 'Please type an activity date'
                                    : null,
                                onSaved: (value) => _activityDate = value,
                              ),
                              DropdownButtonFormField<String>(
                                decoration: const InputDecoration(
                                  labelText: 'Activity type',
                                ),
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Aerobic',
                                    child: Text('Aerobic'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Anaerobic',
                                    child: Text('Anaerobic'),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _activityType = value;
                                  });
                                },
                                validator: (value) => value == null
                                    ? 'Please select an activity type'
                                    : null,
                                onSaved: (value) => _activityType = value,
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              setState(() {
                                final newKey = entries.length;
                                entries[newKey] = {
                                  'activityName': _activityName ?? '',
                                  'durationMinutes': _durationMinutes ?? 0,
                                  'caloriesBurned': _caloriesBurned ?? 0,
                                  'activityDate': _activityDate ?? '',
                                  'activityType': _activityType ?? '',
                                };
                                _updateStats();
                              });
                              Navigator.pop(context);
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
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

  Widget customActivityLogCard(
    String activityName,
    int durationMinutes,
    int caloriesBurned,
    String activityDate,
    String activityType,
    VoidCallback onDelete,
  ) {
    return Card(
      color: activityType == 'Aerobic'
          ? Colors.blue.shade800
          : Colors.deepOrange.shade800,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      activityName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '$durationMinutes minutes',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: onDelete,
                  icon: Icon(Icons.delete, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '$caloriesBurned calories',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  activityDate,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
