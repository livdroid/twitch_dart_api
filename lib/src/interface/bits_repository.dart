import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/props/bits_leaderboard_props.dart';
import 'package:twitch_client/src/props/cheermotes_props.dart';
import 'package:twitch_client/src/response/bits_leaderboard_response.dart';
import 'package:twitch_client/src/response/cheermotes_response.dart';

class BitsInterfaceImpl implements BitsInterface {
  static const String _path = 'bits';

  final TwitchDataSource _twitchDataSource;

  BitsInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, BitsLeaderboardResponse>> getBitsLeaderBoard(
      {required BitsLeaderBoardProps props}) async {
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/leaderboard', queryParams: props.toJson());
      return Right(BitsLeaderboardResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, CheermotesResponse>> getCheermotes(
      {required CheermotesProps props}) async {
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/cheermotes', queryParams: props.toJson());
      return Right(CheermotesResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class BitsInterface {
  Future<Either<Failure, BitsLeaderboardResponse>> getBitsLeaderBoard(
      {required BitsLeaderBoardProps props});

  Future<Either<Failure, CheermotesResponse>> getCheermotes(
      {required CheermotesProps props});
}
