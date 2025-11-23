// Universidad de la Costa - Computación Móvil - Flutter Application 15:

import 'package:flutter/foundation.dart' show debugPrint;

/// Testing async functions with Future and Duration
void testFutureDuration() async {
  debugPrint('Step 1 - starting testFutureDuration()...');
  await fetchWeatherForecast();
  debugPrint('Step 5 - testFutureDuration() finished.');
}

Future<String> getWeatherForecast() async {
  return Future.delayed(Duration(seconds: 2), () => 'Partly cloudy');
}

Future<void> fetchWeatherForecast() async {
  debugPrint('Step 2 - get fetchWeatherForecast...');
  final forecast = await getWeatherForecast();

  debugPrint('Step 3 - show fetchWeatherForecast: $forecast');
  debugPrint('Step 4 - end fetchWeatherForecast.');
}
