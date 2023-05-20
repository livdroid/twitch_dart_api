import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

class RaidRepositoryImpl implements RaidRepository {
  static const String _path = 'raids';

  final TwitchDataSource _twitchDataSource;

  RaidRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, RaidResponse>> startRaid(
      {required RaidProps props}) async {
    try {
      final response =
      await _twitchDataSource.post(path: _path, queryParams: props.toJson(), data: {});
      return Right(RaidResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class RaidRepository {
  Future<Either<Failure, RaidResponse>> startRaid({required RaidProps props});
}
