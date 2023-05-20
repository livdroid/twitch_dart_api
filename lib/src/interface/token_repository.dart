import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/props/token_client_props.dart';
import 'package:twitch_client/src/response/validate_token_response.dart';
import 'package:twitch_client/src/utils/url_constants.dart';

/// The implementation of the [TokenInterface] interface.
///
/// This class provides methods to revoke an access token and verify the token's validity.
class TokenInterfaceImpl implements TokenInterface {
  static const String _path = 'oauth2';

  final TwitchDataSource _twitchDataSource;

  TokenInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource = dataSource ??
      TwitchApiDataSourceImpl(token, clientId,
          url: UrlConstants.idBaseUrl);

  /// Revoke an access token, requiring the user to reconnect to use the app.
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

  /// Verify the validity of the access token.
  ///
  /// According to Twitch's official documentation, this should be done at least once an hour.
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

/// The interface for interacting with Twitch authentication tokens.
///
/// Use this interface to revoke an access token and verify the token's validity.
abstract class TokenInterface {
  /// Revoke an access token, requiring the user to reconnect to use the app.
  Future<Either<Failure, bool>> revokeAccessToken(
      {required TokenClientProps props});

  /// Verify the validity of the access token.
  ///
  /// According to Twitch's official documentation, this should be done at least once an hour.
  Future<Either<Failure, ValidateTokenResponse>> verifyToken();
}
