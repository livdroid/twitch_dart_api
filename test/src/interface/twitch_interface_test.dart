import 'package:flutter_test/flutter_test.dart';
import 'package:twitch_client/src/interface/twitch_interface.dart';
import 'package:twitch_client/twitch_client.dart';

void main() {
  group('getConnectionUrl', () {
    final TwitchInterface twitchInterface =
        TwitchInterface(clientId: '1234', redirectionURL: '123');
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
          throwsAssertionError);
    });
  });
}
