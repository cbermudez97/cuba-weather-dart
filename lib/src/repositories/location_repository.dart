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
    var bestLocation = locations[0].toLowerCase();
    var bestDistance = levenshtein.distance(locationQuery, bestLocation);
    for (var i = 1; i < locations.length; ++i) {
      var tempLocation = locations[i].toLowerCase();
      var tempDistance = levenshtein.distance(locationQuery, tempLocation);
      if (tempDistance < bestDistance) {
        bestLocation = tempLocation;
        bestDistance = tempDistance;
      }
    }
    return bestLocation;
  }
}
