import 'package:flutter_test/flutter_test.dart';
import 'package:twitch_client/twitch_client.dart';

void main() {
  test('all scopes return all scopes types', () {
    final subs = TwitchApiScopes.allScopes;
    expect(subs.isNotEmpty, true);
    expect(subs.length, 51);
    expect(subs.contains(TwitchApiScopes.analyticsReadExtensions), true); //First
    expect(subs.contains(TwitchApiScopes.whispersEdit), true); //Last
  });
}