import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/props/create_custom_reward_props.dart';
import 'package:twitch_client/src/props/delete_custom_reward_props.dart';
import 'package:twitch_client/src/props/get_custom_rewards_props.dart';
import 'package:twitch_client/src/response/create_custom_reward_response.dart';
import 'package:twitch_client/src/response/custom_reward_response.dart';
import 'package:twitch_client/src/response/get_custom_rewards_response.dart';
import 'package:twitch_client/twitch_client.dart';

class ChannelPointsRepositoryImpl implements ChannelPointsRepository {
  static const String _path = 'channel_points';

  final TwitchDataSource _twitchDataSource;

  ChannelPointsRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, CreateCustomRewardResponse>> createCustomReward(
      {required CreateCustomRewardProps dataProps,
      required BroadcasterProps props}) async {
    try {
      final response = await _twitchDataSource.post(
          path: '$_path/custom_rewards',
          queryParams: props.toJson(),
          data: dataProps.toJson());
      return Right(CreateCustomRewardResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteCustomReward(
      {required DeleteCustomRewardProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.id.isNotEmpty);

    try {
      await _twitchDataSource.delete(
          path: '$_path/custom_rewards', data: {}, queryParams: props.toJson());
      return Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, GetCustomRewardsResponse>> getCustomRewards({required GetCustomRewardsProps props}) async {
    assert(props.broadcasterId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/custom_rewards', queryParams: props.toJson());
      return Right(GetCustomRewardsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

}

abstract class ChannelPointsRepository {
  Future<Either<Failure, CreateCustomRewardResponse>> createCustomReward(
      {required CreateCustomRewardProps dataProps,
      required BroadcasterProps props});

  Future<Either<Failure, bool>> deleteCustomReward(
      {required DeleteCustomRewardProps props});

  Future<Either<Failure, GetCustomRewardsResponse>> getCustomRewards(
      {required GetCustomRewardsProps props});
}
