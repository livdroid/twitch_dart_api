import 'package:test/test.dart';
import 'package:twitch_client/twitch_client.dart';

void main() {
  test('all Subscriptions return all Subscriptions types', () {
    final subs = TwitchSubscriptionType.allSubscriptions;
    expect(subs.isNotEmpty, true);
    expect(subs.length, 43);
    expect(subs.contains(TwitchSubscriptionType.channelUpdate), true); //First
    expect(subs.contains(TwitchSubscriptionType.userUpdate), true); //Last
  });
}
