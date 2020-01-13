import 'package:test/test.dart';

import 'package:cuba_weather_dart/cuba_weather_dart.dart';

void main() {
  test('Print Habana weather', () {
    var cubaWeather = CubaWeather();
    cubaWeather.get('Habana').then((weather) {
      expect(weather.cityName, 'Habana');
    });
  });
}
