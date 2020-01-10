import 'dart:async';

import 'package:http/http.dart';

import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';
import 'package:cuba_weather_dart/src/models/models.dart';
import 'package:cuba_weather_dart/src/repositories/repositories.dart';

/// Main class to provide package functionality.
class CubaWeather {
  LocationRepository _locationRepository;
  WeatherRepository _weatherRepository;

  /// Class constructor
  CubaWeather() {
    _locationRepository = LocationRepository();
    _weatherRepository = WeatherRepository(WeatherApiClient(Client()));
  }

  /// Method that given a location of the user searches the known locations to
  /// find the best match and returns the meteorological information.
  Future<WeatherModel> getWeather(String location) async {
    var _location = await _locationRepository.getLocation(location);
    return await _weatherRepository.getWeather(_location);
  }
}
