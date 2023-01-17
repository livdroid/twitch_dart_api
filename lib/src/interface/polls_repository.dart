import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/props/create_poll_props.dart';
import 'package:twitch_client/src/props/polls_props.dart';
import 'package:twitch_client/src/response/polls_response.dart';
import 'package:twitch_client/twitch_client.dart';

class PollsRepositoryImpl implements PollsRepository {
  static const String _path = 'polls';

  final TwitchDataSource _twitchDataSource;

  PollsRepositoryImpl(this._twitchDataSource);

  @override
  Future<Either<Failure, PollsResponse>> getPolls(
      {required PollsProps props}) async {
    try {
      final response = await _twitchDataSource.get(
          path: '$_path', queryParams: props.toJson());
      return Right(PollsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, PollsResponse>> createPoll(
      {required CreatePollProps props}) async {
    try {
      final response = await _twitchDataSource
          .post(path: '$_path', data: props.toJson(), queryParams: {});
      return Right(PollsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, PollsResponse>> endPoll(
      {required EndPollProps props}) async {
    try {
      final response = await _twitchDataSource
          .patch(path: '$_path', data: props.toJson(), queryParams: {});
      return Right(PollsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class PollsRepository {
  Future<Either<Failure, PollsResponse>> getPolls({required PollsProps props});

  Future<Either<Failure, PollsResponse>> createPoll(
      {required CreatePollProps props});

  Future<Either<Failure, PollsResponse>> endPoll({required EndPollProps props});
}
