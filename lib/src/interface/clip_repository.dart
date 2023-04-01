import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/response/create_clip_response.dart';
import 'package:twitch_client/src/response/get_clip_response.dart';
import 'package:twitch_client/twitch_client.dart';

class ClipRepositoryImpl implements ClipRepository {
  static const String _path = 'clips';

  final TwitchDataSource _twitchDataSource;

  ClipRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, CreateClipResponse>> createClip(
      {required CreateClipProps props}) async {
    assert(props.broadcasterId.isNotEmpty);

    try {
      final response = await _twitchDataSource
          .post(path: _path, queryParams: props.toJson(), data: {});
      return Right(CreateClipResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, GetClipsResponse>> getClips(
      {required GetClipsProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.gameId.isNotEmpty);
    assert(props.id.isNotEmpty);

    try {
      final response =
          await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(GetClipsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class ClipRepository {
  Future<Either<Failure, CreateClipResponse>> createClip(
      {required CreateClipProps props});

  Future<Either<Failure, GetClipsResponse>> getClips(
      {required GetClipsProps props});
}
