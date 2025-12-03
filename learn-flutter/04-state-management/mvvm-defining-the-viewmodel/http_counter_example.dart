// Learn Flutter - State Management - MVVM Defining the ViewModel
// Pure Dart version - No Flutter dependencies required
import 'package:http/http.dart' as http;
import 'dart:convert';

// 1. Data transfer object that encapsulates counter state
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

// 2. Repository layer handling data persistence and API communication
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

      print('Counter loaded from server: $count');
      return CounterData(count);
    } catch (e) {
      print('Error loading counter: $e');
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

      // print('Response body: ${response.body}');

      // We save in memory since JSONPlaceholder does not persist
      _currentCount = newCount;
      print('Counter updated on the server: $_currentCount');
      return CounterData(_currentCount);
    } catch (e) {
      print('Error updating counter: $e');
      rethrow;
    }
  }
}

// 3. Simple ChangeNotifier implementation for pure Dart (replaces Flutter's ChangeNotifier)
class ChangeNotifier {
  final List<Function()> _listeners = [];

  void addListener(Function() listener) {
    _listeners.add(listener);
  }

  void removeListener(Function() listener) {
    _listeners.remove(listener);
  }

  void notifyListeners() {
    for (final listener in _listeners) {
      listener();
    }
  }

  void dispose() {
    _listeners.clear();
  }
}

// 4. Business logic layer exposing reactive state and operations to the View
class CounterViewModel extends ChangeNotifier {
  final CounterModel model;
  int? count;
  String? errorMessage;
  CounterViewModel(this.model);

  Future<void> init() async {
    try {
      count = (await model.loadCountFromServer()).count;
    } catch (e) {
      errorMessage = 'Could not initialize counter';
    }
    notifyListeners();
  }

  Future<void> increment() async {
    final currentCount = count;
    if (currentCount == null) {
      throw Exception('Not initialized');
    }
    try {
      final incrementedCount = currentCount + 1;
      await model.updateCountOnServer(incrementedCount);
      count = incrementedCount;
    } catch (e) {
      errorMessage = 'Could not update count';
    }
    notifyListeners();
  }
}

// 5. Entry point demonstrating ViewModel functionality through terminal output
Future<void> main() async {
  print('=== MVVM Counter ViewModel Test ===\n');

  // Create instances
  final CounterModel model = CounterModel();
  final CounterViewModel viewModel = CounterViewModel(model);

  // Add listener to observe state changes
  viewModel.addListener(() {
    print('=== State Changed ===');
    print('Count: ${viewModel.count}');
    print('Error: ${viewModel.errorMessage ?? "None"}\n');
    // print('');
  });

  // Test initialization
  print('Initializing ViewModel...');
  await viewModel.init();
  await Future.delayed(Duration(seconds: 1));

  // Test increment operation
  print('Incrementing counter...');
  await viewModel.increment();
  await Future.delayed(Duration(seconds: 1));

  print('Incrementing counter again...');
  await viewModel.increment();
  await Future.delayed(Duration(seconds: 1));

  print('Incrementing counter one more time...');
  await viewModel.increment();
  await Future.delayed(Duration(seconds: 1));

  // Display final state
  print('=== Final State ===');
  print('Final Count: ${viewModel.count}');
  print('Final Error: ${viewModel.errorMessage ?? "None"}');
  print('\n=== Test Complete ===');

  // Dispose to clean up listeners
  viewModel.dispose();
}
