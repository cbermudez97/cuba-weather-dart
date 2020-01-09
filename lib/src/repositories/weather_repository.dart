import 'dart:async';

import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';
import 'package:cuba_weather_dart/src/models/models.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClient;

  WeatherRepository(this.weatherApiClient)
      : assert(weatherApiClient != null);

  Future<WeatherModel> getWeather(String location) async {
    return await weatherApiClient.fetchWeather(location);
  }
}
