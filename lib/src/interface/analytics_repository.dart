import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/response/extension_analytics_response.dart';
import 'package:twitch_client/src/response/game_analytics_response.dart';
import 'package:twitch_client/twitch_client.dart';

class AnalyticsRepositoryImpl implements AnalyticsRepository {
  static const String _path = 'analytics';

  final TwitchDataSource _twitchDataSource;

  AnalyticsRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, GameAnalyticsResponse>> getGameAnalytics(
      {required GameAnalyticsProps props}) async {
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/games', queryParams: props.toJson());
      return Right(GameAnalyticsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, ExtensionAnalyticsResponse>> getExtensionAnalytics(
      {required ExtensionAnalyticsProps props}) async {
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/extensions', queryParams: props.toJson());
      return Right(ExtensionAnalyticsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class AnalyticsRepository {
  Future<Either<Failure, GameAnalyticsResponse>> getGameAnalytics(
      {required GameAnalyticsProps props});

  Future<Either<Failure, ExtensionAnalyticsResponse>> getExtensionAnalytics(
      {required ExtensionAnalyticsProps props});
}
