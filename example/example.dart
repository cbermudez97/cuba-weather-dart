import 'package:cuba_weather_dart/cuba_weather_dart.dart';

void main() {
  var cubaWeather = CubaWeather();
  cubaWeather.getWeather('Habana').then((weather) {
    print(weather.cityName);
  });
}
