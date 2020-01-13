import 'dart:async';

import 'package:cuba_weather_dart/src/models/models.dart';
import 'package:cuba_weather_dart/src/repositories/repositories.dart';

/// Main class to provide package functionality.
class CubaWeather {
  LocationRepository _locationRepository;
  WeatherRepository _weatherRepository;

  /// Class constructor
  CubaWeather() {
    _locationRepository = LocationRepository();
    _weatherRepository = WeatherRepository();
  }

  /// Method that given a location of the user searches the known locations to
  /// find the best match and returns the weather information. The best match
  /// is considered as the known location of shorter length that contains the
  /// given location.
  Future<WeatherModel> get(String location, {bool suggestion = false}) async {
    location = await _locationRepository.getLocation(location);
    if (suggestion) {
      location = await _locationRepository.getSuggestion(location);
    }
    return await _weatherRepository.getWeather(location);
  }

  /// Method that returns the best match of the given location with the known
  /// locations. The best match is calculated using the Damerau-Levenshtein
  /// distance.
  Future<String> suggestion(String location) async {
    return await _locationRepository.getSuggestion(location);
  }
}
