import 'dart:convert';

import 'package:http/http.dart';

import 'package:cuba_weather_dart/src/models/models.dart';

class WeatherApiClient {
  static const baseUrl = 'https://www.redcuba.cu/api/weather_get_summary/';
  final Client httpClient;

  WeatherApiClient(this.httpClient) : assert(httpClient != null);

  Future<WeatherModel> fetchWeather(String location) async {
    final url = baseUrl + location;
    final resp = await httpClient.get(url);
    if (resp.statusCode != 200) {
      throw Exception('error getting weather for location');
    }
    final json = jsonDecode(resp.body);
    return WeatherModel.fromJson(json);
  }
}
