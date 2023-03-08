import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/channel_points_respository.dart';
import 'package:twitch_client/src/props/create_custom_reward_props.dart';
import 'package:twitch_client/src/response/create_custom_reward_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'moderation_repository_test.mocks.dart';

void main() {
  final mockedDataSource = MockTwitchDataSource();
  final repository = ChannelPointsRepositoryImpl('token', 'clientid',
      dataSource: mockedDataSource);

  group('getBannedUsers', () {
    const String path = 'channel_points/custom_rewards';
    CreateCustomRewardProps data =
        const CreateCustomRewardProps(cost: 1, title: 'title');
    CreateCustomRewardResponse response =
        const CreateCustomRewardResponse(data: [Datum(broadcasterId: '123')]);
    BroadcasterProps props = BroadcasterProps(broadcasterId: '1234');

    test('On success', () async {
      when(mockedDataSource.post(
              path: path, queryParams: props.toJson(), data: data.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result =
          await repository.createCustomReward(dataProps: data, props: props);

      verify(mockedDataSource.post(
        path: path,
        queryParams: props.toJson(),
        data: data.toJson(),
      ));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<CreateCustomRewardResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.post(
              path: path, queryParams: props.toJson(), data: data.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result =
          await repository.createCustomReward(dataProps: data, props: props);

      verify(mockedDataSource.post(
        path: path,
        queryParams: props.toJson(),
        data: data.toJson(),
      ));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });
  });
}
