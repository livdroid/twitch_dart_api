import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// The implementation of the ClipRepository.
///
/// This class provides methods to interact with the Twitch Clip API, allowing you to create clips and fetch clips.
class ClipRepositoryImpl implements ClipRepository {
  static const String _path = 'clips';

  final TwitchDataSource _twitchDataSource;

  /// Creates an instance of [ClipRepositoryImpl].
  ///
  /// The [token] is the access token required for authentication with the Twitch API.
  /// The [clientId] is the client ID associated with the Twitch application.
  /// The optional [dataSource] parameter allows injecting a custom [TwitchDataSource] implementation.
  ClipRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Create a clip for a channel.
  ///
  /// The [props] parameter contains the properties required to create a clip.
  /// Returns a [Future] that either yields a [Right] containing the [CreateClipResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Get clips based on the provided properties.
  ///
  /// The [props] parameter contains the properties required to fetch clips.
  /// Returns a [Future] that either yields a [Right] containing the [GetClipsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, GetClipsResponse>> getClips(
      {required GetClipsProps props}) async {
    try {
      final response =
      await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(GetClipsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The contract for the ClipRepository.
///
/// This abstract class defines the methods to interact with the Twitch Clip API,
/// allowing you to create clips and fetch clips.
abstract class ClipRepository {
  /// Create a clip for a channel.
  ///
  /// The [props] parameter contains the properties required to create a clip.
  /// Returns a [Future] that either yields a [Right] containing the [CreateClipResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, CreateClipResponse>> createClip(
      {required CreateClipProps props});

  /// Get clips based on the provided properties.
  ///
  /// The [props] parameter contains the properties required to fetch clips.
  /// Returns a [Future] that either yields a [Right] containing the [GetClipsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, GetClipsResponse>> getClips(
      {required GetClipsProps props});
}
