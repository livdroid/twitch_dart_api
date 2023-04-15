import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/interface/subscription_repository.dart';
import 'package:twitch_client/twitch_client.dart';

import '../../json/asset_reader.dart';
import 'analytics_repository_test.mocks.dart';

void main() {
  late SubscriptionRepository repository;
  late MockTwitchDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockTwitchDataSource();
    repository = SubscriptionRepositoryImpl('token', 'clientId',
        dataSource: mockDataSource);
  });
  group('getBroadcasterSubscription', () {
    const props = GetBroadcasterSubscriptionProps(broadcasterId: '123');
    final response = jsonDecode(assetReader('response_get_subscription.json'));

    test(
        'should return GetBroadcasterSubscriptionResponse when the request is successful',
        () async {
      when(mockDataSource.get(
              path: anyNamed('path'), queryParams: anyNamed('queryParams')))
          .thenAnswer((_) async => response);

      final result = await repository.getBroadcasterSubscription(props: props);

      expect(result.isRight(), true);
      expect(result.asRight(), isA<GetBroadcasterSubscriptionResponse>());
    });

    test('should return Failure when the request fails', () async {
      when(mockDataSource.get(
              path: anyNamed('path'), queryParams: anyNamed('queryParams')))
          .thenThrow(Exception('Something went wrong'));

      final result = await repository.getBroadcasterSubscription(props: props);

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<Exception>());
    });

    test('should throw AssertionError if broadcasterId is empty', () async {
      const invalidProps = GetBroadcasterSubscriptionProps(broadcasterId: '');

      expect(() => repository.getBroadcasterSubscription(props: invalidProps),
          throwsA(isA<AssertionError>()));
    });
  });
}
