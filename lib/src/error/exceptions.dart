/// Twitch Api is down
class ServerException extends TwitchClientException {
  ServerException({required super.message});
}

/// Error while parsing from JSON or to JSON
class DataParsingException extends TwitchClientException {
  DataParsingException({required super.message});
}

/// No internet while request was made
class NetworkException extends TwitchClientException {
  NetworkException({required super.message});
}

/// Token is not valid or scope not authorized
/// 401 Unauthorized
class UnauthorizedException extends TwitchClientException {
  UnauthorizedException({required super.message});
}

/// Unvalid Request
/// 400 Bad Request
class BadRequestException extends TwitchClientException {
  BadRequestException({required super.message});
}

/// Forbiddon Request
/// 403 Forbidden
class ForbiddenRequestException extends TwitchClientException {
  ForbiddenRequestException({required super.message});
}

/// Bad arguments value in a prop object
class BadValueException implements Exception {}

abstract class TwitchClientException implements Exception {
  final String message;

  TwitchClientException({required this.message});

  @override
  String toString() {
    return message;
  }
}
