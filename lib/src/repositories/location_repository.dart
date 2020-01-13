import 'dart:async';

import 'package:cuba_weather_dart/src/data_providers/data_providers.dart';
import 'package:cuba_weather_dart/src/utils/utils.dart';

/// Class to provide the functionality of searching for a location
class LocationRepository {
  LocationRepository() {
    locations.sort((a, b) => a.length - b.length);
  }

  /// Method that returns the best match of the given location with the known
  /// locations. The best match is considered as the known location of shorter
  /// length that contains the given location.
  Future<String> getLocation(String locationQuery) async {
    locationQuery = locationQuery.toLowerCase();
    for (var location in locations) {
      if (location.toLowerCase().contains(locationQuery)) {
        return location;
      }
    }
    return locationQuery;
  }

  /// Method that returns the best match of the given location with the known
  /// locations. The best match is calculated using the Damerau-Levenshtein
  /// distance.
  Future<String> getSuggestion(String locationQuery) async {
    locationQuery = locationQuery.toLowerCase();
    var bestLocation = locations[0].toLowerCase();
    var bestDistance = distance(locationQuery, bestLocation);
    for (var i = 1; i < locations.length; ++i) {
      var tempLocation = locations[i].toLowerCase();
      var tempDistance = distance(locationQuery, tempLocation);
      if (tempDistance < bestDistance) {
        bestLocation = tempLocation;
        bestDistance = tempDistance;
      }
    }
    return bestLocation;
  }
}
