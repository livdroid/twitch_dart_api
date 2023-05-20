import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// The repository for interacting with Twitch video-related API endpoints.
class VideoRepositoryImpl implements VideoRepository {
  static const String _path = 'videos';

  final TwitchDataSource _twitchDataSource;

  VideoRepositoryImpl(String token, String clientId, {TwitchDataSource? dataSource})
      : _twitchDataSource = dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Retrieve a video.
  ///
  /// Returns a [VideoResponse] object representing the retrieved video.
  ///
  /// Throws a [Failure] if an exception occurs during the API call.
  @override
  Future<Either<Failure, VideoResponse>> getVideo({required VideoProps props}) async {
    try {
      final response = await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(VideoResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Remove a video.
  ///
  /// Returns `true` if the video is successfully deleted.
  ///
  /// Throws a [Failure] if an exception occurs during the API call.
  @override
  Future<Either<Failure, bool>> deleteVideo({required VideoProps props}) async {
    try {
      await _twitchDataSource.delete(path: _path, queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The repository interface for interacting with Twitch video-related API endpoints.
abstract class VideoRepository {
  /// Retrieve a video.
  ///
  /// The `props` parameter contains the properties for retrieving the video.
  ///
  /// Returns an [Either] object containing a [VideoResponse] if the retrieval is successful,
  /// or a [Failure] if an exception occurs during the API call.
  Future<Either<Failure, VideoResponse>> getVideo({required VideoProps props});

  /// Remove a video.
  ///
  /// The `props` parameter contains the properties for deleting the video.
  ///
  /// Returns an [Either] object containing `true` if the video is successfully deleted,
  /// or a [Failure] if an exception occurs during the API call.
  Future<Either<Failure, bool>> deleteVideo({required VideoProps props});
}
