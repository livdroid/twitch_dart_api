import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// The implementation of the AnalyticsRepository.
///
/// This class provides methods to fetch analytics data related to games and extensions from the Twitch API.
class AnalyticsRepositoryImpl implements AnalyticsRepository {
  static const String _path = 'analytics';

  final TwitchDataSource _twitchDataSource;

  /// Creates an instance of [AnalyticsRepositoryImpl].
  ///
  /// The [token] is the access token required for authentication with the Twitch API.
  /// The [clientId] is the client ID associated with the Twitch application.
  /// The optional [dataSource] parameter allows injecting a custom [TwitchDataSource] implementation.
  AnalyticsRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Get analytics about a specific game.
  ///
  /// The [props] parameter contains the properties required to fetch game analytics.
  /// Returns a [Future] that either yields a [Right] containing the [GameAnalyticsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Get extension analytics.
  ///
  /// The [props] parameter contains the properties required to fetch extension analytics.
  /// Returns a [Future] that either yields a [Right] containing the [ExtensionAnalyticsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

/// The contract for the AnalyticsRepository.
///
/// This abstract class defines the methods to fetch game and extension analytics from the Twitch API.
abstract class AnalyticsRepository {
  /// Get analytics about a specific game.
  ///
  /// The [props] parameter contains the properties required to fetch game analytics.
  /// Returns a [Future] that either yields a [Right] containing the [GameAnalyticsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, GameAnalyticsResponse>> getGameAnalytics(
      {required GameAnalyticsProps props});

  /// Get extension analytics.
  ///
  /// The [props] parameter contains the properties required to fetch extension analytics.
  /// Returns a [Future] that either yields a [Right] containing the [ExtensionAnalyticsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, ExtensionAnalyticsResponse>> getExtensionAnalytics(
      {required ExtensionAnalyticsProps props});
}
