import 'package:equatable/equatable.dart';

/// Model class for mapping the json returned by the https://www.redcuba.cu
/// weather API
class WeatherModel extends Equatable {
  final String cityName;
  final WeatherDateModel dt;
  final double temp;
  final int pressure;
  final int humidity;
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

  @override
  List<Object> get props => [
        cityName,
        dt,
        temp,
        pressure,
        humidity,
        iconWeather,
        windstring,
        descriptionWeather,
      ];

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
}

/// Model class for mapping part of the json returned by the
/// https://www.redcuba.cu weather API
class WeatherDateModel extends Equatable {
  final String date;
  final int timezone_type; // ignore: non_constant_identifier_names
  final String timezone;

  // ignore: non_constant_identifier_names
  /// Class constructor
  const WeatherDateModel({this.date, this.timezone_type, this.timezone});

  @override
  List<Object> get props => [date, timezone_type, timezone];

  /// Static method that returns an instance of the class from the json provided
  static WeatherDateModel fromJson(dynamic json) {
    return WeatherDateModel(
      date: json['date'],
      timezone_type: json['timezone_type'],
      timezone: json['timezone'],
    );
  }
}
