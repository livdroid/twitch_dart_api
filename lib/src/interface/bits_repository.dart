import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/props/bits_leaderboard_props.dart';
import 'package:twitch_client/src/props/cheermotes_props.dart';
import 'package:twitch_client/src/response/bits_leaderboard_response.dart';
import 'package:twitch_client/src/response/cheermotes_response.dart';

/// The implementation of the BitsInterface.
///
/// This class provides methods to fetch bits leaderboard and cheermotes data from the Twitch API.
class BitsInterfaceImpl implements BitsInterface {
  static const String _path = 'bits';

  final TwitchDataSource _twitchDataSource;

  /// Creates an instance of [BitsInterfaceImpl].
  ///
  /// The [token] is the access token required for authentication with the Twitch API.
  /// The [clientId] is the client ID associated with the Twitch application.
  /// The optional [dataSource] parameter allows injecting a custom [TwitchDataSource] implementation.
  BitsInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Get the top bits giver for a channel.
  ///
  /// The [props] parameter contains the properties required to fetch bits leaderboard data.
  /// Returns a [Future] that either yields a [Right] containing the [BitsLeaderboardResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Get the cheermotes from a channel.
  ///
  /// The [props] parameter contains the properties required to fetch cheermotes data.
  /// Returns a [Future] that either yields a [Right] containing the [CheermotesResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

/// The contract for the BitsInterface.
///
/// This abstract class defines the methods to fetch bits leaderboard and cheermotes data from the Twitch API.
abstract class BitsInterface {
  /// Get the top bits giver for a channel.
  ///
  /// The [props] parameter contains the properties required to fetch bits leaderboard data.
  /// Returns a [Future] that either yields a [Right] containing the [BitsLeaderboardResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, BitsLeaderboardResponse>> getBitsLeaderBoard(
      {required BitsLeaderBoardProps props});

  /// Get the cheermotes from a channel.
  ///
  /// The [props] parameter contains the properties required to fetch cheermotes data.
  /// Returns a [Future] that either yields a [Right] containing the [CheermotesResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, CheermotesResponse>> getCheermotes(
      {required CheermotesProps props});
}
