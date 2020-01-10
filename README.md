# Cuba Weather

Dart client for [www.redcuba.cu](https://www.redcuba.cu) weather API. Given a location in Cuba, if it is within the permitted locations, meteorological data on the location is obtained.

## Installing

### Depend on it

Add this to your package's `pubspec.yaml` file:

```[yaml]
dependencies:
  cuba_weather_dart: ^0.1.2
```

### Install it

You can install packages from the command line:

with pub:

```[bash]
$ pub get
```

with Flutter:

```[bash]
$ flutter pub get
```

Alternatively, your editor might support `pub get` or `flutter pub get`. Check the docs for your editor to learn more.

### Import it

Now in your Dart code, you can use:

```[dart]
import 'package:cuba_weather_dart/cuba_weather_dart.dart';
```

## Example

```[dart]
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
```

## Changelog

### [0.1.3] - January 9, 2020

* Remove unnecessary code
* Add CODE_OF_CONDUCT.md
* Improve README.md

### [0.1.2] - January 9, 2020

* Fix example README.md

### [0.1.1] - January 9, 2020

* Remove Flutter dependency
* Use Test Dart package instance of Flutter Test
* Add `pubspec.yaml` to example
* Fix example
* Fix test

### [0.1.0] - January 9, 2020

* Improve package description
* Format code
* Add example
* Change homepage

### [0.0.1] - January 9, 2020

* Initial implementation of Dart client for [www.redcuba.cu](https://www.redcuba.cu) weather API.

## License

MIT License
Copyright (c) 2020 Leynier Gutiérrez González

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
