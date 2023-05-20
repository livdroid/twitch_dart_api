import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// The implementation of the [PollsRepository] interface.
///
/// This class provides methods to interact with the Twitch polls API,
/// allowing you to retrieve polls, create new polls, and end existing polls.
class PollsRepositoryImpl implements PollsRepository {
  static const String _path = 'polls';

  final TwitchDataSource _twitchDataSource;

  PollsRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Get all polls from a channel
  @override
  Future<Either<Failure, PollsResponse>> getPolls(
      {required PollsProps props}) async {
    try {
      final response =
      await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(PollsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Create a new poll for a channel
  @override
  Future<Either<Failure, PollsResponse>> createPoll(
      {required CreatePollProps props}) async {
    try {
      final response = await _twitchDataSource
          .post(path: _path, data: props.toJson(), queryParams: {});
      return Right(PollsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// End a poll currently live
  @override
  Future<Either<Failure, PollsResponse>> endPoll(
      {required EndPollProps props}) async {
    try {
      final response = await _twitchDataSource
          .patch(path: _path, data: props.toJson(), queryParams: {});
      return Right(PollsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The interface for interacting with Twitch polls.
///
/// Use this interface to retrieve polls, create new polls, and end existing polls.
abstract class PollsRepository {
  /// Get all polls from a channel.
  Future<Either<Failure, PollsResponse>> getPolls({required PollsProps props});

  /// Create a new poll for a channel.
  Future<Either<Failure, PollsResponse>> createPoll(
      {required CreatePollProps props});

  /// End a poll currently live.
  Future<Either<Failure, PollsResponse>> endPoll({required EndPollProps props});
}
