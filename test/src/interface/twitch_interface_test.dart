import 'package:dartz/dartz.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/token_repository.dart';
import 'package:twitch_client/src/interface/twitch_repositories.dart';
import 'package:twitch_client/twitch_client.dart';

import 'twitch_interface_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TokenInterface>(), MockSpec<TwitchRepositories>()])
void main() {
  late MockTokenInterface mockTokenInterface;
  late MockTwitchRepositories mockTwitchRepositories;
  late TwitchInterface twitchInterface;

  setUp(() {
    mockTokenInterface = MockTokenInterface();
    mockTwitchRepositories = MockTwitchRepositories();
    twitchInterface = TwitchInterface(clientId: '1234', redirectionURL: '123');
    twitchInterface.twitchRepositories = mockTwitchRepositories;
  });

  group('getConnectionUrl', () {
    test('Return valid URI', () {
      final uri =
          twitchInterface.getConnectionUrl(scopes: [TwitchApiScopes.chatRead]);
      expect(uri.queryParametersAll.containsKey('scope'), true);
      expect(uri.queryParametersAll.containsKey('client_id'), true);
      expect(uri.queryParametersAll.containsKey('redirect_uri'), true);
      expect(uri.queryParametersAll.containsKey('response_type'), true);
      expect(uri.queryParametersAll['scope'], [TwitchApiScopes.chatRead]);
      expect(uri.queryParametersAll['client_id'], ['1234']);
      expect(uri.queryParametersAll['redirect_uri'], ['123']);
      expect(uri.queryParametersAll['response_type'], ['token']);
    });

    test('Throw error on empty scopes', () {
      expect(() => twitchInterface.getConnectionUrl(scopes: []),
          throwsA(const TypeMatcher<AssertionError>()));
    });
  });

  group('init', () {
    test('Return true if parsing was effective', () async {
      const url =
          'http://localhost:8080/static.html#access_token=TOKEN&scope=analytics%3Aread%3Aextensions+analytics%3Aread%3Agames+bits%3Aread+channel%3Aedit%3Acommercial+channel%3Amanage%3Abroadcast+channel%3Aread%3Acharity+channel%3Amanage%3Aextensions+channel%3Amanage%3Amoderators+channel%3Amanage%3Apolls+channel%3Amanage%3Apredictions+channel%3Amanage%3Araids+channel%3Amanage%3Aredemptions+channel%3Amanage%3Aschedule+channel%3Amanage%3Avideos+channel%3Aread%3Aeditors+channel%3Aread%3Agoals+channel%3Aread%3Ahype_train+channel%3Aread%3Apolls+channel%3Aread%3Apredictions+channel%3Aread%3Aredemptions+channel%3Aread%3Astream_key+channel%3Aread%3Asubscriptions+channel%3Aread%3Avips+channel%3Amanage%3Avips+clips%3Aedit+moderation%3Aread+moderator%3Amanage%3Aannouncements+moderator%3Amanage%3Aautomod+moderator%3Aread%3Aautomod_settings+moderator%3Amanage%3Aautomod_settings+moderator%3Amanage%3Abanned_users+moderator%3Aread%3Ablocked_terms+moderator%3Amanage%3Ablocked_terms+moderator%3Amanage%3Achat_messages+moderator%3Aread%3Achat_settings+moderator%3Amanage%3Achat_settings+moderator%3Aread%3Achatters+user%3Aedit+user%3Amanage%3Ablocked_users+user%3Aread%3Ablocked_users+user%3Aread%3Abroadcast+user%3Amanage%3Achat_color+user%3Aread%3Aemail+user%3Aread%3Afollows+user%3Aread%3Asubscriptions+user%3Amanage%3Awhispers+channel%3Amoderate+chat%3Aedit+chat%3Aread+whispers%3Aread+whispers%3Aedit&token_type=bearer';
      final couldInit = await twitchInterface.init(url: url);
      expect(couldInit, true);
      expect(twitchInterface.accessToken, 'TOKEN');
    });

    test('Return false if parsing was not effective', () async {
      const badUrl = 'ABCD';
      final couldInit = await twitchInterface.init(url: badUrl);
      expect(couldInit, false);
    });

    test('Returns false when url is empty', () async {
      final result = await twitchInterface.init();
      expect(result, false);
    });
  });

  group('verifyToken', () {
    test('Token is valid', () async {
      when(mockTwitchRepositories.tokenRepository)
          .thenReturn(mockTokenInterface);

      when(mockTokenInterface.verifyToken()).thenAnswer((_) async =>
          const Right(ValidateTokenResponse(
              clientId: 'clientId',
              login: 'login',
              scopes: ['scopes'],
              userId: 'userId',
              expiresIn: 1000)));
      final status = await twitchInterface.validateToken();

      expect(status, TokenStatus.valid);
    });

    test('Token validate request returned an error', () async {
      when(mockTwitchRepositories.tokenRepository)
          .thenReturn(mockTokenInterface);

      when(mockTokenInterface.verifyToken())
          .thenAnswer((_) async => Left(Failure(Exception())));

      final status = await twitchInterface.validateToken();
      expect(status, TokenStatus.error);
    });

    test('Token validate request returned an unvalid token', () async {
      when(mockTwitchRepositories.tokenRepository)
          .thenReturn(mockTokenInterface);

      when(mockTokenInterface.verifyToken()).thenAnswer(
          (_) async => Left(Failure(UnauthorizedException(message: ''))));

      final status = await twitchInterface.validateToken();
      expect(status, TokenStatus.invalid);
    });
  });

  group('parseUrl', () {
    test('returns access token if it exists in URL fragment', () {
      const url = 'https://example.com/#access_token=abc123&expires_in=3600';
      expect(twitchInterface.parseUrl(url: url), 'abc123');
    });

    test('returns empty string if access token is not in URL fragment', () {
      const url = 'https://example.com/#expires_in=3600';
      expect(twitchInterface.parseUrl(url: url), '');
    });

    test('returns empty string if URL fragment is empty', () {
      const url = 'https://example.com/#';
      expect(twitchInterface.parseUrl(url: url), '');
    });
  });
}
