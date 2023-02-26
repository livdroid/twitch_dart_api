import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/props/token_client_props.dart';
import 'package:twitch_client/src/response/validate_token_response.dart';

class TokenInterfaceImpl implements TokenInterface {
  static const String _path = 'oauth2/';

  final TwitchDataSource _twitchDataSource;

  TokenInterfaceImpl(this._twitchDataSource);

  @override
  Future<Either<Failure, bool>> revokeAccessToken(
      {required TokenClientProps props}) async {
    try {
      await _twitchDataSource
          .post(path: '$_path/revoke', data: props.toJson(), queryParams: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, ValidateTokenResponse>> verifyToken() async {
    try {
      final result =
          await _twitchDataSource.get(path: '$_path/validate', queryParams: {});
      return Right(ValidateTokenResponse.fromJson(result ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class TokenInterface {
  Future<Either<Failure, bool>> revokeAccessToken(
      {required TokenClientProps props});

  Future<Either<Failure, ValidateTokenResponse>> verifyToken();
}
