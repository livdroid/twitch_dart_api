import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// The implementation of the [StreamsRepository] interface.
///
/// This class provides methods to interact with the Twitch streams API,
/// allowing you to retrieve streams, retrieve followed streams, and retrieve stream keys.
class StreamsRepositoryImpl implements StreamsRepository {
  static const String _path = 'streams';

  final TwitchDataSource _twitchDataSource;

  StreamsRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Retrieve all streams with or without parameters
  @override
  Future<Either<Failure, GetStreamsResponse>> getStreams(
      {required GetStreamsProps props}) async {
    try {
      final response =
      await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(GetStreamsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Retrieve all streams that you follow
  @override
  Future<Either<Failure, GetStreamsResponse>> getFollowedStreams(
      {required GetFollowedStreamsProps props}) async {
    assert(props.userId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/followed', queryParams: props.toJson());
      return Right(GetStreamsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Retrieve a stream key for a streaming software
  @override
  Future<Either<Failure, StreamKeyResponse>> getStreamKey(
      {required BroadcasterProps props}) async {
    assert(props.broadcasterId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/key', queryParams: props.toJson());
      return Right(StreamKeyResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The interface for interacting with Twitch streams.
///
/// Use this interface to retrieve streams, retrieve followed streams, and retrieve stream keys.
abstract class StreamsRepository {
  /// Retrieve all streams with or without parameters.
  Future<Either<Failure, GetStreamsResponse>> getStreams(
      {required GetStreamsProps props});

  /// Retrieve all streams that you follow.
  Future<Either<Failure, GetStreamsResponse>> getFollowedStreams(
      {required GetFollowedStreamsProps props});

  /// Retrieve a stream key for a streaming software.
  Future<Either<Failure, StreamKeyResponse>> getStreamKey(
      {required BroadcasterProps props});
}
