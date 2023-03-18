import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/props/get_followed_streams_props.dart';
import 'package:twitch_client/src/props/get_streams_props.dart';
import 'package:twitch_client/src/response/get_streams_response.dart';
import 'package:twitch_client/src/response/stream_key_response.dart';
import 'package:twitch_client/twitch_client.dart';

class StreamsRepositoryImpl implements StreamsRepository {
  static const String _path = 'streams';

  final TwitchDataSource _twitchDataSource;

  StreamsRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

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

  @override
  Future<Either<Failure, StreamKeyResponse>> getStreamKey({required BroadcasterProps props}) async {
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

abstract class StreamsRepository {
  Future<Either<Failure, GetStreamsResponse>> getFollowedStreams(
      {required GetFollowedStreamsProps props});

  Future<Either<Failure, GetStreamsResponse>> getStreams(
      {required GetStreamsProps props});

  Future<Either<Failure, StreamKeyResponse>> getStreamKey(
      {required BroadcasterProps props});
}