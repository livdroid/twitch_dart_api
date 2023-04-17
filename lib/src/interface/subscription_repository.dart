import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/response/get_broadcaster_subscription_response.dart';
import 'package:twitch_client/twitch_client.dart';

class SubscriptionRepositoryImpl implements SubscriptionRepository {
  static const String _path = 'subscriptions';

  final TwitchDataSource _twitchDataSource;

  SubscriptionRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, GetBroadcasterSubscriptionResponse>>
      getBroadcasterSubscription(
          {required GetBroadcasterSubscriptionProps props}) async {
    assert(props.broadcasterId.isNotEmpty);

    try {
      final response =
          await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(GetBroadcasterSubscriptionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class SubscriptionRepository {
  Future<Either<Failure, GetBroadcasterSubscriptionResponse>>
      getBroadcasterSubscription(
          {required GetBroadcasterSubscriptionProps props});
}
