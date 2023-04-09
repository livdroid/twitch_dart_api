import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/channel_points_respository.dart';
import 'package:twitch_client/src/response/get_custom_reward_redemptions_response.dart';
import 'package:twitch_client/src/response/get_custom_rewards_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'moderation_repository_test.mocks.dart';

void main() {
  final mockedDataSource = MockTwitchDataSource();
  final repository = ChannelPointsRepositoryImpl('token', 'clientid',
      dataSource: mockedDataSource);

  group('createCustomReward', () {
    const String path = 'channel_points/custom_rewards';
    CreateCustomRewardProps data =
        const CreateCustomRewardProps(cost: 1, title: 'title');
    CreateCustomRewardResponse response = const CreateCustomRewardResponse(
        data: [GetCustomRewardsDataResponse(broadcasterId: '123')]);
    BroadcasterProps props = const BroadcasterProps(broadcasterId: '1234');

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

  group('DeleteCustomReward', () {
    const String path = 'channel_points/custom_rewards';
    DeleteCustomRewardProps props =
        const DeleteCustomRewardProps(broadcasterId: '1', id: '1');
    DeleteCustomRewardProps emptyProps =
        const DeleteCustomRewardProps(broadcasterId: '', id: '');

    test('On success', () async {
      when(mockedDataSource.delete(
          path: path,
          queryParams: props.toJson(),
          data: {})).thenAnswer((realInvocation) async => {});

      final result = await repository.deleteCustomReward(props: props);

      verify(mockedDataSource.delete(
        path: path,
        queryParams: props.toJson(),
        data: {},
      ));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<bool>());
    });

    test('On failure', () async {
      when(mockedDataSource.delete(
          path: path,
          queryParams: props.toJson(),
          data: {})).thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.deleteCustomReward(props: props);

      verify(mockedDataSource.delete(
        path: path,
        queryParams: props.toJson(),
        data: {},
      ));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On Empty Props', () async {
      when(mockedDataSource.delete(
          path: path,
          queryParams: emptyProps.toJson(),
          data: {})).thenAnswer((realInvocation) async => {});

      expect(() => repository.deleteCustomReward(props: emptyProps),
          throwsAssertionError);

      verifyNever(mockedDataSource
          .delete(path: path, queryParams: emptyProps.toJson(), data: {}));
    });
  });

  group('GetCustomRewards', () {
    const String path = 'channel_points/custom_rewards';
    GetCustomRewardsProps props =
        const GetCustomRewardsProps(broadcasterId: '1');
    GetCustomRewardsProps emptyProps =
        const GetCustomRewardsProps(broadcasterId: '');
    GetCustomRewardsResponse response = const GetCustomRewardsResponse(
        data: [GetCustomRewardsDataResponse(broadcasterId: '123')]);

    test('On success', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getCustomRewards(props: props);

      verify(mockedDataSource.get(
        path: path,
        queryParams: props.toJson(),
      ));

      expect(result.isRight(), true);
      expect(result.asRight(), isA<GetCustomRewardsResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getCustomRewards(props: props);

      verify(mockedDataSource.get(
        path: path,
        queryParams: props.toJson(),
      ));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On Empty Props', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(() => repository.getCustomRewards(props: emptyProps),
          throwsAssertionError);

      verifyNever(
          mockedDataSource.get(path: path, queryParams: emptyProps.toJson()));
    });
  });

  group('GetCustomRewardRedemption', () {
    const String path = 'channel_points/custom_rewards/redemptions';
    GetCustomRewardRedemptionProps props = const GetCustomRewardRedemptionProps(
        broadcasterId: '1', rewardId: '1', status: 'CANCELED');
    GetCustomRewardRedemptionProps propsError =
        const GetCustomRewardRedemptionProps(
            broadcasterId: '1', rewardId: '1', status: 'CANCELED', id: '123');
    GetCustomRewardRedemptionProps emptyProps =
        const GetCustomRewardRedemptionProps(broadcasterId: '', rewardId: '');
    GetCustomRewardRedemptionResponse response =
        const GetCustomRewardRedemptionResponse(data: [
      GetCustomRewardRedemptionResponseData(broadcasterId: '123')
    ]);

    test('On success', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getCustomRewardRedemptions(props: props);

      verify(mockedDataSource.get(
        path: path,
        queryParams: props.toJson(),
      ));

      expect(result.isRight(), true);
      expect(result.asRight(), isA<GetCustomRewardRedemptionResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getCustomRewardRedemptions(props: props);

      verify(mockedDataSource.get(
        path: path,
        queryParams: props.toJson(),
      ));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On Empty Props', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(() => repository.getCustomRewardRedemptions(props: emptyProps),
          throwsAssertionError);

      verifyNever(
          mockedDataSource.get(path: path, queryParams: emptyProps.toJson()));
    });

    test('On Error Props', () async {
      when(mockedDataSource.get(path: path, queryParams: propsError.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(() => repository.getCustomRewardRedemptions(props: propsError),
          throwsAssertionError);

      verifyNever(
          mockedDataSource.get(path: path, queryParams: propsError.toJson()));
    });
  });

  group('UpdateCustomReward', () {
    const String path = 'channel_points/custom_rewards';
    UpdateCustomRewardProps props = const UpdateCustomRewardProps(title: '1');
    BroadcasterAndIdProps queryProps =
        const BroadcasterAndIdProps(broadcasterId: '1', id: '1');
    BroadcasterAndIdProps emptyQueryProps =
        const BroadcasterAndIdProps(broadcasterId: '', id: '');
    GetCustomRewardsResponse response = const GetCustomRewardsResponse(
        data: [GetCustomRewardsDataResponse(broadcasterId: '123')]);

    test('On success', () async {
      when(mockedDataSource.patch(
              path: path,
              data: props.toJson(),
              queryParams: queryProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.updateCustomReward(
          props: props, queryProps: queryProps);

      verify(mockedDataSource.patch(
        path: path,
        queryParams: queryProps.toJson(),
        data: props.toJson(),
      ));

      expect(result.isRight(), true);
      expect(result.asRight(), isA<GetCustomRewardsResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.patch(
              path: path,
              data: props.toJson(),
              queryParams: queryProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.updateCustomReward(
          props: props, queryProps: queryProps);

      verify(mockedDataSource.patch(
        path: path,
        queryParams: queryProps.toJson(),
        data: props.toJson(),
      ));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On Empty Props', () async {
      when(mockedDataSource.patch(
              path: path,
              data: props.toJson(),
              queryParams: emptyQueryProps.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(
          () => repository.updateCustomReward(
              props: props, queryProps: emptyQueryProps),
          throwsAssertionError);

      verifyNever(mockedDataSource
          .patch(path: path, queryParams: emptyQueryProps.toJson(), data: {}));
    });
  });

  group('UpdateCustomRewardRedemption', () {
    const String path = 'channel_points/custom_rewards/redemptions';
    UpdateCustomRewardRedemptionStatusProps props =
        const UpdateCustomRewardRedemptionStatusProps(status: 'CANCELED');
    UpdateCustomRewardRedemptionProps queryProps =
        const UpdateCustomRewardRedemptionProps(
            broadcasterId: '1', id: '1', rewardId: '1');
    UpdateCustomRewardRedemptionProps emptyQueryProps =
        const UpdateCustomRewardRedemptionProps(
            broadcasterId: '', id: '', rewardId: '');
    UpdateCustomRewardRedemptionResponse response =
        const UpdateCustomRewardRedemptionResponse(
            data: [UpdateCustomRewardRedemption()]);

    test('On success', () async {
      when(mockedDataSource.patch(
              path: path,
              data: props.toJson(),
              queryParams: queryProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.updateCustomRewardRedemption(
          props: props, queryProps: queryProps);

      verify(mockedDataSource.patch(
        path: path,
        queryParams: queryProps.toJson(),
        data: props.toJson(),
      ));

      expect(result.isRight(), true);
      expect(result.asRight(), isA<UpdateCustomRewardRedemptionResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.patch(
              path: path,
              data: props.toJson(),
              queryParams: queryProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.updateCustomRewardRedemption(
          props: props, queryProps: queryProps);

      verify(mockedDataSource.patch(
        path: path,
        queryParams: queryProps.toJson(),
        data: props.toJson(),
      ));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On Empty Props', () async {
      when(mockedDataSource.patch(
              path: path,
              data: props.toJson(),
              queryParams: emptyQueryProps.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(
          () => repository.updateCustomRewardRedemption(
              props: props, queryProps: emptyQueryProps),
          throwsAssertionError);

      verifyNever(mockedDataSource
          .patch(path: path, queryParams: emptyQueryProps.toJson(), data: {}));
    });
  });
}
