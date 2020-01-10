# Cuba Weather Example

Example of Dart client for [www.redcuba.cu](https://www.redcuba.cu) weather API. Given a location in Cuba, if it is within the permitted locations, meteorological data on the location is obtained.

```[dart]
import 'package:cuba_weather_dart/cuba_weather_dart.dart';

void main() {
  var cubaWeather = CubaWeather();
  print(cubaWeather.getWeather('Habana'));
}
```
