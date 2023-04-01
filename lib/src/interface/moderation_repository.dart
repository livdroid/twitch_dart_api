import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/props/add_blocked_terms_props.dart';
import 'package:twitch_client/src/props/add_moderator_props.dart';
import 'package:twitch_client/src/props/ban_user_props.dart';
import 'package:twitch_client/src/props/broadcaster_moderator_props.dart';
import 'package:twitch_client/src/props/broadcaster_props.dart';
import 'package:twitch_client/src/props/get_blocked_terms_props.dart';
import 'package:twitch_client/src/props/moderation_props.dart';
import 'package:twitch_client/src/props/remove_blocked_terms_props.dart';
import 'package:twitch_client/src/props/remove_moderator_props.dart';
import 'package:twitch_client/src/response/add_blocked_terms_response.dart';
import 'package:twitch_client/src/response/ban_user_response.dart';
import 'package:twitch_client/src/response/banned_users_response.dart';
import 'package:twitch_client/src/response/get_blocked_terms_response.dart';
import 'package:twitch_client/src/response/moderator_response.dart';

class ModerationInterfaceImpl implements ModerationInterface {
  static const String _path = 'moderation';

  final TwitchDataSource _twitchDataSource;

  ModerationInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Retrieve a list of users banned from a channel
  @override
  Future<Either<Failure, BannedUsersResponse>> getBannedUsers(
      {required BroadcasterProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/banned', queryParams: props.toJson());
      return Right(BannedUsersResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Unban a user from a channel
  @override
  Future<Either<Failure, bool>> unbanUser(
      {required ModerationProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);
    assert(props.userId.isNotEmpty);

    try {
      await _twitchDataSource
          .delete(path: '$_path/bans', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Ban a user from a channel
  @override
  Future<Either<Failure, BanUserResponse>> banUser(
      {required BanUserProps props,
      required BroadcasterModeratorProps queryProps}) async {
    assert(queryProps.moderatorId.isNotEmpty);

    try {
      final response = await _twitchDataSource.post(
          path: '$_path/bans',
          queryParams: queryProps.toJson(),
          data: props.toJson());
      return Right(BanUserResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Retrieve moderators from a channel
  @override
  Future<Either<Failure, ModeratorResponse>> getModerators(
      {required BroadcasterProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/moderators', queryParams: props.toJson());
      return Right(ModeratorResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Give moderator status to a user
  @override
  Future<Either<Failure, bool>> addModerator(
      {required AddModeratorProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.userId.isNotEmpty);
    assert(props.userId != props.broadcasterId);

    try {
      await _twitchDataSource.post(
          path: '$_path/moderators', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Remove the moderator status of a channel to a user
  @override
  Future<Either<Failure, bool>> removeModerator(
      {required RemoveModeratorProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.userId.isNotEmpty);
    assert(props.userId != props.broadcasterId);

    try {
      await _twitchDataSource.delete(
          path: '$_path/moderators', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, AddBlockedTermsResponse>> addBlockedTerms(
      {required AddBlockedTermsProps termsProps,
      required BroadcasterModeratorProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.broadcasterId.isNotEmpty);
    assert(termsProps.text.isNotEmpty);
    assert(termsProps.text.length > 2);
    assert(termsProps.text.length >= 2);
    assert(termsProps.text.length <= 500);

    try {
      final response = await _twitchDataSource.post(
          path: '$_path/blocked_terms', queryParams: props.toJson(), data: termsProps.toJson());
      return Right(AddBlockedTermsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, GetBlockedTermsResponse>> getBlockedTerms(
      {required GetBlockedTermsProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/blocked_terms', queryParams: props.toJson());
      return Right(GetBlockedTermsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, bool>> removeBlockedTerms(
      {required RemoveBlockedTermsProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);
    assert(props.id.isNotEmpty);

    try {
      await _twitchDataSource.delete(
          path: '$_path/blocked_terms', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class ModerationInterface {
  Future<Either<Failure, BannedUsersResponse>> getBannedUsers(
      {required BroadcasterProps props});

  Future<Either<Failure, bool>> unbanUser({required ModerationProps props});

  Future<Either<Failure, BanUserResponse>> banUser(
      {required BanUserProps props,
      required BroadcasterModeratorProps queryProps});

  Future<Either<Failure, ModeratorResponse>> getModerators(
      {required BroadcasterProps props});

  Future<Either<Failure, bool>> addModerator(
      {required AddModeratorProps props});

  Future<Either<Failure, bool>> removeModerator(
      {required RemoveModeratorProps props});

  Future<Either<Failure, GetBlockedTermsResponse>> getBlockedTerms(
      {required GetBlockedTermsProps props});

  Future<Either<Failure, AddBlockedTermsResponse>> addBlockedTerms(
      {required AddBlockedTermsProps termsProps,
      required BroadcasterModeratorProps props});

  Future<Either<Failure, bool>> removeBlockedTerms(
      {required RemoveBlockedTermsProps props});
}
