import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

class VideoRepositoryImpl implements VideoRepository {
  static const String _path = 'videos';

  final TwitchDataSource _twitchDataSource;

  VideoRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Retrieve a video
  @override
  Future<Either<Failure, VideoResponse>> getVideo(
      {required VideoProps props}) async {
    try {
      final response =
          await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(VideoResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Remove a video
  @override
  Future<Either<Failure, bool>> deleteVideo({required VideoProps props}) async {
    try {
      await _twitchDataSource
          .delete(path: _path, queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class VideoRepository {
  Future<Either<Failure, VideoResponse>> getVideo({required VideoProps props});

  Future<Either<Failure, bool>> deleteVideo({required VideoProps props});
}
