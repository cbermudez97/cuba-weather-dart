import 'package:flutter_test/flutter_test.dart';

import 'package:cuba_weather_dart/cuba_weather_dart.dart';

void main() {
  test('print Habana weather', () {
    var cubaWeather = CubaWeather();
    print(cubaWeather.getWeather('Habana'));
  });
}
