import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/interface/token_repository.dart';
import 'package:twitch_client/src/props/add_moderator_props.dart';
import 'package:twitch_client/src/props/ban_user_props.dart';
import 'package:twitch_client/src/props/broadcaster_moderator_props.dart';
import 'package:twitch_client/src/props/broadcaster_props.dart';
import 'package:twitch_client/src/props/moderation_props.dart';
import 'package:twitch_client/src/props/remove_moderator_props.dart';
import 'package:twitch_client/src/response/ban_user_response.dart';
import 'package:twitch_client/src/response/banned_users_response.dart';
import 'package:twitch_client/src/response/moderator_response.dart';

class ModerationInterfaceImpl implements ModerationInterface {
  static const String _path = 'moderation';

  final TwitchDataSource _twitchDataSource;

  ModerationInterfaceImpl(String token, String clientId, {TwitchDataSource? dataSource}) : _twitchDataSource = dataSource ?? TwitchApiDataSourceImpl(token, clientId);

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

  @override
  Future<Either<Failure, bool>> addModerator(
      {required AddModeratorProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.userId.isNotEmpty);
    assert(props.userId != props.broadcasterId);

    try {
      final response = await _twitchDataSource.post(
          path: '$_path/moderators', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

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
}
