// Learn Flutter - State Management - Using MVVM for your application's architecture
import 'package:http/http.dart' as http;
import 'dart:convert';

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

class CounterModel {
  // Using JSONPlaceholder -a free and reliable service for testing
  // The /posts/1 endpoint returns an object with an 'id' field that we will use as a counter
  static const String baseUrl = 'http://jsonplaceholder.typicode.com';

  // Variable in memory to simulate persistence
  int _currentCount = 1;

  Future<CounterData> loadCountFromSever() async {
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

  Future<CounterData> updateCountOnSever(int newCount) async {
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

      print('Response body: ${response.body}');

      // final jsonData = jsonDecode(response.body);
      // final count = jsonData['id'] as int;
      // print('Counter updated on the server: $count');
      // return CounterData(count);

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

// Main function to test in console
void main() async {
  print('Starting HTTP test with counter...\n');
  final CounterModel counterModel = CounterModel();

  // Test 1: loading counter from server
  print('Test 1: loading counter from server...');
  try {
    final CounterData data = await counterModel.loadCountFromSever();
    print(' Result: ${data.count}\n');
  } catch (e) {
    print(' Error: $e\n');
  }

  // Test 2: Updating counter on server
  print('Test 2: Updating counter on server to 42...');
  try {
    final CounterData data = await counterModel.updateCountOnSever(42);
    print(' Result: ${data.count}\n');
  } catch (e) {
    print(' Error: $e\n');
  }

  print('Tests completed!');
}
