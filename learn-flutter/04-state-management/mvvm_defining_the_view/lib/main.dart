// Learn Flutter - State Management - MVVM Defining the View
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Global ViewModel instance
final CounterViewModel viewModel = CounterViewModel(CounterModel());

void main() {
  // Initialize ViewModel before running the app
  WidgetsFlutterBinding.ensureInitialized();
  viewModel.init();
  runApp(const MVVMApp());
}

// 1. Main App Widget
class MVVMApp extends StatelessWidget {
  const MVVMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM Counter Example',
      home: const CounterPage(),
    );
  }
}

// 2. Counter Page Widget
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM Counter Example')),
      body: Center(
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (viewModel.errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Error: ${viewModel.errorMessage}',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge?.copyWith(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ),
                const Text('You have pushed the button this many times:'),
                Text(
                  '${viewModel.count ?? 0}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                if (viewModel.count == null)
                  const CircularProgressIndicator()
                else
                  ElevatedButton(
                    onPressed: () {
                      viewModel.increment();
                    },
                    child: const Text('Increment'),
                  ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// 3. Data transfer object that encapsulates counter state
class CounterData {
  CounterData(this.count);

  final int count;

  factory CounterData.fromJson(Map<String, dynamic> json) {
    return CounterData(json['count'] as int);
  }

  Map<String, dynamic> toJson() {
    return {'count': count};
  }
}

// 4. Repository layer handling data persistence and API communication
class CounterModel {
  // Using JSONPlaceholder - a free and reliable service for testing
  // The /posts/1 endpoint returns an object with an 'id' field that we will use as a counter
  static const String baseUrl = 'http://jsonplaceholder.typicode.com';

  // Variable in memory to simulate persistence
  int _currentCount = 1;

  Future<CounterData> loadCountFromServer() async {
    try {
      final Uri uri = Uri.parse('$baseUrl/posts/1');
      final response = await http.get(uri);

      if (response.statusCode != 200) {
        throw Exception(
          'Failed to load resource. Status: ${response.statusCode}',
        );
      }

      // JSONPlaceholder returns an object with 'id', we use it as a counter
      final jsonData = jsonDecode(response.body);
      final count = jsonData['id'] as int;

      if (kDebugMode) {
        debugPrint('Counter loaded from server: $count');
      }
      return CounterData(count);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error loading counter: $e');
      }
      rethrow;
    }
  }

  Future<CounterData> updateCountOnServer(int newCount) async {
    try {
      final Uri uri = Uri.parse('$baseUrl/posts/1');
      final response = await http.put(
        uri,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(<String, dynamic>{
          'id': newCount,
          'title': 'Counter Update',
          'body': 'Updated counter value',
          'userId': 1,
        }),
      );

      if (response.statusCode != 200) {
        throw Exception(
          'Failed to update resource. Status: ${response.statusCode}',
        );
      }

      // We save in memory since JSONPlaceholder does not persist
      _currentCount = newCount;
      if (kDebugMode) {
        debugPrint('Counter updated on the server: $_currentCount');
      }
      return CounterData(_currentCount);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error updating counter: $e');
      }
      rethrow;
    }
  }
}

// 5. Business logic layer exposing reactive state and operations to the View
class CounterViewModel extends ChangeNotifier {
  final CounterModel model;
  int? count;
  String? errorMessage;
  CounterViewModel(this.model);

  Future<void> init() async {
    try {
      count = (await model.loadCountFromServer()).count;
      errorMessage = null;
    } catch (e) {
      errorMessage = 'Could not initialize counter';
    }
    notifyListeners();
  }

  Future<void> increment() async {
    final currentCount = count;
    if (currentCount == null) {
      errorMessage = 'Not initialized';
      notifyListeners();
      return;
    }
    try {
      final incrementedCount = currentCount + 1;
      await model.updateCountOnServer(incrementedCount);
      count = incrementedCount;
      errorMessage = null;
    } catch (e) {
      errorMessage = 'Could not update count';
    }
    notifyListeners();
  }
}
