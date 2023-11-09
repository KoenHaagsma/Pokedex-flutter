sealed class APIException implements Exception {
  APIException(this.message);
  final String message;
}

class InvalidApiKeyException extends APIException {
  InvalidApiKeyException() : super('Invalid API key');
}

class NoInternetConnectionException extends APIException {
  NoInternetConnectionException() : super('No internet connection');
}

class PokemonNotFoundException extends APIException {
  PokemonNotFoundException() : super('Pokemon not found');
}

class UnknownException extends APIException {
  UnknownException() : super('Unknown error');
}
