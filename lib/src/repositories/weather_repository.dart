import 'dart:async';

import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';
import 'package:cuba_weather_dart/src/models/models.dart';

/// Class to provide the functionality of obtaining weather data
class WeatherRepository {
  WeatherApiClient weatherApiClient;

  /// Class constructor
  WeatherRepository() {
    weatherApiClient = WeatherApiClient();
  }

  /// Method that given a location returns the weather information
  Future<WeatherModel> getWeather(String location) async {
    return await weatherApiClient.fetchWeather(location);
  }
}
