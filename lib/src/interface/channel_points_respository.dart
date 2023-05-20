import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// The implementation of the ChannelPointsRepository.
///
/// This class provides methods to interact with Twitch Channel Points API, allowing you to manage custom rewards and their redemptions.
class ChannelPointsRepositoryImpl implements ChannelPointsRepository {
  static const String _path = 'channel_points';

  final TwitchDataSource _twitchDataSource;

  /// Creates an instance of [ChannelPointsRepositoryImpl].
  ///
  /// The [token] is the access token required for authentication with the Twitch API.
  /// The [clientId] is the client ID associated with the Twitch application.
  /// The optional [dataSource] parameter allows injecting a custom [TwitchDataSource] implementation.
  ChannelPointsRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Create a custom reward.
  ///
  /// The [dataProps] parameter contains the properties required to create a custom reward.
  /// The [props] parameter contains the properties of the broadcaster associated with the custom reward.
  /// Returns a [Future] that either yields a [Right] containing the [CreateCustomRewardResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Remove a custom reward using its ID.
  ///
  /// The [props] parameter contains the properties required to delete a custom reward.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> deleteCustomReward(
      {required DeleteCustomRewardProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.id.isNotEmpty);

    try {
      await _twitchDataSource.delete(
          path: '$_path/custom_rewards', data: {}, queryParams: props.toJson());
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Retrieve all custom rewards or a specific one.
  ///
  /// The [props] parameter contains the properties required to fetch custom rewards.
  /// Returns a [Future] that either yields a [Right] containing the [GetCustomRewardsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, GetCustomRewardsResponse>> getCustomRewards(
      {required GetCustomRewardsProps props}) async {
    assert(props.broadcasterId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/custom_rewards', queryParams: props.toJson());
      return Right(GetCustomRewardsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Retrieve custom reward redemptions.
  ///
  /// The [props] parameter contains the properties required to fetch custom reward redemptions.
  /// Returns a [Future] that either yields a [Right] containing the [GetCustomRewardRedemptionResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, GetCustomRewardRedemptionResponse>>
  getCustomRewardRedemptions(
      {required GetCustomRewardRedemptionProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.rewardId.isNotEmpty);
    assert(props.id == null && props.status != null);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/custom_rewards/redemptions',
          queryParams: props.toJson());
      return Right(GetCustomRewardRedemptionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Update a custom reward.
  ///
  /// The [queryProps] parameter contains the properties required to identify the custom reward.
  /// The [props] parameter contains the properties to update the custom reward.
  /// Returns a [Future] that either yields a [Right] containing the [GetCustomRewardsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, GetCustomRewardsResponse>> updateCustomReward(
      {required BroadcasterAndIdProps queryProps,
        required UpdateCustomRewardProps props}) async {
    assert(queryProps.broadcasterId.isNotEmpty);
    assert(queryProps.id.isNotEmpty);

    try {
      final response = await _twitchDataSource.patch(
          path: '$_path/custom_rewards',
          data: props.toJson(),
          queryParams: queryProps.toJson());
      return Right(GetCustomRewardsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Update a custom reward redemption.
  ///
  /// The [queryProps] parameter contains the properties required to identify the custom reward redemption.
  /// The [props] parameter contains the properties to update the custom reward redemption status.
  /// Returns a [Future] that either yields a [Right] containing the [UpdateCustomRewardRedemptionResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, UpdateCustomRewardRedemptionResponse>>
  updateCustomRewardRedemption(
      {required UpdateCustomRewardRedemptionProps queryProps,
        required UpdateCustomRewardRedemptionStatusProps props}) async {
    assert(queryProps.broadcasterId.isNotEmpty);
    assert(queryProps.id.isNotEmpty);
    assert(queryProps.rewardId.isNotEmpty);

    try {
      final response = await _twitchDataSource.patch(
          path: '$_path/custom_rewards/redemptions',
          data: props.toJson(),
          queryParams: queryProps.toJson());
      return Right(
          UpdateCustomRewardRedemptionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The contract for the ChannelPointsRepository.
///
/// This abstract class defines the methods to interact with Twitch Channel Points API,
/// allowing you to manage custom rewards and their redemptions.
abstract class ChannelPointsRepository {
  /// Create a custom reward.
  ///
  /// The [dataProps] parameter contains the properties required to create a custom reward.
  /// The [props] parameter contains the properties of the broadcaster associated with the custom reward.
  /// Returns a [Future] that either yields a [Right] containing the [CreateCustomRewardResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, CreateCustomRewardResponse>> createCustomReward(
      {required CreateCustomRewardProps dataProps,
        required BroadcasterProps props});

  /// Remove a custom reward using its ID.
  ///
  /// The [props] parameter contains the properties required to delete a custom reward.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, bool>> deleteCustomReward(
      {required DeleteCustomRewardProps props});

  /// Retrieve all custom rewards or a specific one.
  ///
  /// The [props] parameter contains the properties required to fetch custom rewards.
  /// Returns a [Future] that either yields a [Right] containing the [GetCustomRewardsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, GetCustomRewardsResponse>> getCustomRewards(
      {required GetCustomRewardsProps props});

  /// Retrieve custom reward redemptions.
  ///
  /// The [props] parameter contains the properties required to fetch custom reward redemptions.
  /// Returns a [Future] that either yields a [Right] containing the [GetCustomRewardRedemptionResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, GetCustomRewardRedemptionResponse>>
  getCustomRewardRedemptions(
      {required GetCustomRewardRedemptionProps props});

  /// Update a custom reward.
  ///
  /// The [queryProps] parameter contains the properties required to identify the custom reward.
  /// The [props] parameter contains the properties to update the custom reward.
  /// Returns a [Future] that either yields a [Right] containing the [GetCustomRewardsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, GetCustomRewardsResponse>> updateCustomReward(
      {required BroadcasterAndIdProps queryProps,
        required UpdateCustomRewardProps props});

  /// Update a custom reward redemption.
  ///
  /// The [queryProps] parameter contains the properties required to identify the custom reward redemption.
  /// The [props] parameter contains the properties to update the custom reward redemption status.
  /// Returns a [Future] that either yields a [Right] containing the [UpdateCustomRewardRedemptionResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, UpdateCustomRewardRedemptionResponse>>
  updateCustomRewardRedemption(
      {required UpdateCustomRewardRedemptionProps queryProps,
        required UpdateCustomRewardRedemptionStatusProps props});
}
