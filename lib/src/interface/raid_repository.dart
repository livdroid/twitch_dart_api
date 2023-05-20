import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// Implementation of the [RaidRepository] interface for handling raid operations.
class RaidRepositoryImpl implements RaidRepository {
  static const String _path = 'raids';

  final TwitchDataSource _twitchDataSource;

  /// Constructs a [RaidRepositoryImpl] instance with the specified token and client ID.
  ///
  /// An optional [TwitchDataSource] can be provided for custom data source implementation.
  RaidRepositoryImpl(String token, String clientId, {TwitchDataSource? dataSource})
      : _twitchDataSource = dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Start a raid using the specified raid properties.
  ///
  /// Returns a [RaidResponse] wrapped in an [Either] representing the success or failure of the operation.
  @override
  Future<Either<Failure, RaidResponse>> startRaid({required RaidProps props}) async {
    try {
      final response = await _twitchDataSource.post(path: _path, queryParams: props.toJson(), data: {});
      return Right(RaidResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Cancel an ongoing raid initiated by the specified broadcaster.
  ///
  /// Returns a boolean value wrapped in an [Either] representing the success or failure of the operation.
  @override
  Future<Either<Failure, bool>> cancelRaid({required BroadcasterProps props}) async {
    try {
      await _twitchDataSource.delete(path: _path, queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// Interface for the raid repository, defining the contract for raid operations.
abstract class RaidRepository {
  /// Start a raid using the specified raid properties.
  ///
  /// Returns a [RaidResponse] wrapped in an [Either] representing the success or failure of the operation.
  Future<Either<Failure, RaidResponse>> startRaid({required RaidProps props});

  /// Cancel an ongoing raid initiated by the specified broadcaster.
  ///
  /// Returns a boolean value wrapped in an [Either] representing the success or failure of the operation.
  Future<Either<Failure, bool>> cancelRaid({required BroadcasterProps props});
}
