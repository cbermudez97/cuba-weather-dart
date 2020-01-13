# Cuba Weather Examples

Example of Dart client for [www.redcuba.cu](https://www.redcuba.cu) weather API. Given a location in Cuba, if it is within the permitted locations, weather data on the location is obtained.

```dart
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
```
