import 'dart:io';

import 'package:cuba_weather_dart/cuba_weather_dart.dart';

void main() {
  print('Insert location:');
  var location = stdin.readLineSync();
  var cubaWeather = CubaWeather();
  cubaWeather.get(location, suggestion: true).then((weather) {
    print(weather);
  });
}
