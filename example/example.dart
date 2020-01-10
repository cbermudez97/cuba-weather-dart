import 'package:cuba_weather_dart/cuba_weather_dart.dart';

void main() {
  var cubaWeather = CubaWeather();
  cubaWeather.getWeather('Habana').then((weather) {
    print('City Name: ${weather.cityName}');
    print('Temperature: ${weather.temp}°C');
    print('Timestamp: ${weather.dt.date}');
    print('Humidity: ${weather.humidity}%');
    print('Pressure: ${weather.pressure} hpa');
    print('Wind: ${weather.windstring}');
    print('Description: ${weather.descriptionWeather}');
    print('Image Link: ${weather.iconWeather}');
  });
}
