import 'dart:async';

import 'package:http/http.dart';

import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';
import 'package:cuba_weather_dart/src/models/models.dart';
import 'package:cuba_weather_dart/src/repositories/repositories.dart';

class CubaWeather {
  LocationRepository _locationRepository;
  WeatherRepository _weatherRepository;

  CubaWeather() {
    _locationRepository = LocationRepository();
    _weatherRepository = WeatherRepository(WeatherApiClient(Client()));
  }

  Future<WeatherModel> getWeather(String location) async {
    var _location = await _locationRepository.getLocation(location);
    return await _weatherRepository.getWeather(_location);
  }
}
