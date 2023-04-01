import 'package:flutter_test/flutter_test.dart';
import 'package:twitch_client/src/error/exceptions.dart';

void main() {
  group('TwitchClientException tests', () {
    test('ServerException should return correct message', () {
      final exception = ServerException(message: 'Twitch Api is down');
      expect(exception.toString(), 'Twitch Api is down');
    });

    test('DataParsingException should return correct message', () {
      final exception = DataParsingException(message: 'Error while parsing data');
      expect(exception.toString(), 'Error while parsing data');
    });

    test('NetworkException should return correct message', () {
      final exception = NetworkException(message: 'No internet connection');
      expect(exception.toString(), 'No internet connection');
    });

    test('UnauthorizedException should return correct message', () {
      final exception = UnauthorizedException(message: 'Invalid token or scope');
      expect(exception.toString(), 'Invalid token or scope');
    });

    test('BadRequestException should return correct message', () {
      final exception = BadRequestException(message: 'Invalid request');
      expect(exception.toString(), 'Invalid request');
    });

    test('ForbiddenRequestException should return correct message', () {
      final exception = ForbiddenRequestException(message: 'Access denied');
      expect(exception.toString(), 'Access denied');
    });

    test('BadValueException should return correct message', () {
      final exception = BadValueException(message: 'Invalid value');
      expect(exception.toString(), equals('Invalid value'));
    });
  });
}
