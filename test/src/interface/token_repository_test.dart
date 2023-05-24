import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/interface/token_repository.dart';
import 'package:twitch_client/src/props/token_client_props.dart';
import 'package:twitch_client/src/response/validate_token_response.dart';

import '../../json/asset_reader.dart';
import 'analytics_repository_test.mocks.dart';

void main() {
  late TokenInterface tokenInterface;
  late MockTwitchDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockTwitchDataSource();
    tokenInterface =
        TokenInterfaceImpl('token', 'clientId', dataSource: mockDataSource);
  });

  group('revokeAccessToken', () {
    const url = 'oauth2/revoke';

    test('should return Right(true) when the data source call succeeds',
        () async {
      const props = TokenClientProps(token: '123', clientId: '123');

      final result = await tokenInterface.revokeAccessToken(props: props);

      expect(result, const Right(true));
      verify(mockDataSource
          .post(path: url, data: props.toJson(), queryParams: {})).called(1);
    });

    test('should return Left(Failure) when the data source call fails',
        () async {
      const props = TokenClientProps(token: '123', clientId: '123');
      final failure = Failure(Exception('error message'));

      when(mockDataSource.post(
          path: url,
          data: props.toJson(),
          queryParams: {})).thenThrow(failure.exception);

      final result = await tokenInterface.revokeAccessToken(props: props);

      expect(result.isLeft(), true);
      verify(mockDataSource
          .post(path: url, data: props.toJson(), queryParams: {})).called(1);
    });
  });

  group('verifyToken', () {
    const url = 'oauth2/validate';

    test(
        'should return a ValidateTokenResponse when the data source call succeeds',
        () async {
      final apiResponse =
          jsonDecode(assetReader('response_validate_token.json'));
      final expectedResponse = ValidateTokenResponse.fromJson(apiResponse);

      when(mockDataSource.get(path: url, queryParams: {}))
          .thenAnswer((_) async => apiResponse);

      final result = await tokenInterface.verifyToken();

      expect(result, Right(expectedResponse));
      verify(mockDataSource.get(path: url, queryParams: {})).called(1);
    });

    test('should return Left(Failure) when the data source call fails',
        () async {
      final failure = Failure(Exception('error message'));

      when(mockDataSource.get(path: url, queryParams: {}))
          .thenThrow(failure.exception);

      final result = await tokenInterface.verifyToken();

      expect(result.isLeft(), true);
      verify(mockDataSource.get(path: url, queryParams: {}));
    });
  });
}
