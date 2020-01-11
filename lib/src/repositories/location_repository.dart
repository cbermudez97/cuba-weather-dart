import 'dart:async';

import 'package:edit_distance/edit_distance.dart';

import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';

/// Class to provide the functionality of searching for a location
class LocationRepository {
  LocationRepository() {
    locations.sort((a, b) => a.length - b.length);
  }

  /// Method that returns the best match of the given location with the known
  /// locations
  Future<String> getLocation(String locationQuery) async {
    locationQuery = locationQuery.toLowerCase();
    for (var location in locations) {
      if (location.toLowerCase().contains(locationQuery)) {
        return location;
      }
    }
    var levenshtein = Levenshtein();
    var best_location = locations[0].toLowerCase();
    var best_distance = levenshtein.distance(locationQuery, best_location);
    for (var i = 1; i < locations.length; ++i) {
      var temp_location = locations[i].toLowerCase();
      var temp_distance = levenshtein.distance(locationQuery, temp_location);
      if (temp_distance < best_distance) {
        best_location = temp_location;
        best_distance = temp_distance;
      }
    }
    return best_location;
  }
}
