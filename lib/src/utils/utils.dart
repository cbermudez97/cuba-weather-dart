class BadRequestException implements Exception {
  final String message;

  BadRequestException(this.message);
}

class InvalidLocationException implements Exception {
  final String message;

  InvalidLocationException(this.message);
}
