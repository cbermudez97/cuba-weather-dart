/// Model class for mapping the json returned by the https://www.redcuba.cu
/// weather API
class WeatherModel {
  final String cityName;
  final WeatherDateModel dt;
  final double temp;
  final double pressure;
  final double humidity;
  final String iconWeather;
  final String windstring;
  final String descriptionWeather;

  /// Class constructor
  const WeatherModel({
    this.cityName,
    this.dt,
    this.temp,
    this.pressure,
    this.humidity,
    this.iconWeather,
    this.windstring,
    this.descriptionWeather,
  });

  /// Static method that returns an instance of the class from the json provided
  static WeatherModel fromJson(dynamic json) {
    final data = json['data'];
    return WeatherModel(
      cityName: data['cityName'],
      dt: WeatherDateModel.fromJson(data['dt']),
      temp: data['temp'],
      pressure: data['pressure'],
      humidity: data['humidity'],
      iconWeather: data['iconWeather'],
      windstring: data['windstring'],
      descriptionWeather: data['descriptionWeather'],
    );
  }

  @override
  String toString() {
    var result = StringBuffer();
    result.write('City Name: ${cityName}\n');
    result.write('Temperature: ${temp}°C\n');
    result.write('Timestamp: ${dt.date}\n');
    result.write('Humidity: ${humidity}%\n');
    result.write('Pressure: ${pressure} hpa\n');
    result.write('Wind: ${windstring}\n');
    result.write('Description: ${descriptionWeather}\n');
    result.write('Image Link: ${iconWeather}');
    return result.toString();
  }
}

/// Model class for mapping part of the json returned by the
/// https://www.redcuba.cu weather API
class WeatherDateModel {
  final DateTime date;
  final double timezoneType;
  final String timezone;

  /// Class constructor
  const WeatherDateModel({this.date, this.timezoneType, this.timezone});

  /// Static method that returns an instance of the class from the json provided
  static WeatherDateModel fromJson(dynamic json) {
    return WeatherDateModel(
      date: json['date'],
      timezoneType: json['timezone_type'],
      timezone: json['timezone'],
    );
  }
}
