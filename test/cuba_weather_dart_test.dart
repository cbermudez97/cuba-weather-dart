import 'package:flutter_test/flutter_test.dart';

import 'package:cuba_weather_dart/cuba_weather_dart.dart';

void main() {
  test('Print Habana weather', () {
    var cubaWeather = CubaWeather();
    cubaWeather.getWeather('Habana').then((weather) {
      expect(weather.cityName, 'Habana');
    });
  });
}
