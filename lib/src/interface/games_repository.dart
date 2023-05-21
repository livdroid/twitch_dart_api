import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/response/top_games_response.dart';
import 'package:twitch_client/twitch_client.dart';

class GamesRepositoryImpl implements GamesRepository {
  static const String _path = 'games';

  final TwitchDataSource _twitchDataSource;

  GamesRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, GamesResponse>> getTopGames() async {
    try {
      final response = await _twitchDataSource.get(path: '$_path/top', queryParams: {});
      return Right(GamesResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, GamesResponse>> getGames({required GameProps props}) async {
    try {
      final response = await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(GamesResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class GamesRepository {
  Future<Either<Failure, GamesResponse>> getTopGames();
  Future<Either<Failure, GamesResponse>> getGames({required GameProps props});
}
