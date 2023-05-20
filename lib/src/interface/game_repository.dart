import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/response/top_games_response.dart';
import 'package:twitch_client/twitch_client.dart';

class TopGamesRepositoryImpl implements TopGamesRepository {
  static const String _path = 'games';

  final TwitchDataSource _twitchDataSource;

  TopGamesRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, TopGamesResponse>> getTopGames() async {
    try {
      final response = await _twitchDataSource.get(path: '$_path/top', queryParams: {});
      return Right(TopGamesResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class TopGamesRepository {
  Future<Either<Failure, TopGamesResponse>> getTopGames();
}
