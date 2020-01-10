import 'dart:async';

import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';

/// Class to provide the functionality of searching for a location
class LocationRepository {
  LocationRepository() {
    locations.sort((a, b) => a.length - b.length);
  }

  /// Method that returns the best match of the given location with the known
  /// locations
  Future<String> getLocation(String locationQuery) async {
    var locationQueryLowerCase = locationQuery.toLowerCase();
    for (var location in locations) {
      if (location.toLowerCase().contains(locationQueryLowerCase)) {
        return location;
      }
    }
    throw Exception('$locationQuery not found in the database');
  }
}
