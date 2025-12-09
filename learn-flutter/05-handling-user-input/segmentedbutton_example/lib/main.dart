// Learn Flutter - Handling User Input - SegmentedButton Example:
import 'package:flutter/material.dart';

void main() {
  runApp(const SegmentedButtonApp());
}

class SegmentedButtonApp extends StatelessWidget {
  const SegmentedButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SegmentedButton Sample')),
        body: Center(child: SegmentedButtonExample()),
      ),
    );
  }
}

enum Calendar { day, week, month, year }

class SegmentedButtonExample extends StatefulWidget {
  const SegmentedButtonExample({super.key});

  @override
  State<SegmentedButtonExample> createState() => _SegmentedButtonExampleState();
}

class _SegmentedButtonExampleState extends State<SegmentedButtonExample> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SegmentedButton<Calendar>(
        segments: const <ButtonSegment<Calendar>>[
          ButtonSegment<Calendar>(
            value: Calendar.day,
            label: Text('Day'),
            icon: Icon(Icons.calendar_view_day),
          ),
          ButtonSegment<Calendar>(
            value: Calendar.week,
            label: Text('Week'),
            icon: Icon(Icons.calendar_view_week),
          ),
          ButtonSegment<Calendar>(
            value: Calendar.month,
            label: Text('Month'),
            icon: Icon(Icons.calendar_view_month),
          ),
          ButtonSegment<Calendar>(
            value: Calendar.year,
            label: Text('Year'),
            icon: Icon(Icons.calendar_today),
          ),
        ],
        selected: <Calendar>{calendarView},
        onSelectionChanged: (Set<Calendar> newSelection) {
          setState(() {
            // By default, there is only a single segment that can be
            // selected at a time, so its value is always the first.
            calendarView = newSelection.first;
          });
        },
      ),
    );
  }
}
