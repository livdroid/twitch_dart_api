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
import 'package:twitch_client/src/props/update_automod_props.dart';
import 'package:twitch_client/src/response/add_blocked_terms_response.dart';
import 'package:twitch_client/src/response/ban_user_response.dart';
import 'package:twitch_client/src/response/banned_users_response.dart';
import 'package:twitch_client/src/response/get_automod_settings_response.dart';
import 'package:twitch_client/src/response/get_blocked_terms_response.dart';
import 'package:twitch_client/src/response/moderator_response.dart';

/// The implementation of the ModerationInterface.
///
/// This class provides methods to interact with the Twitch moderation API,
/// allowing you to perform moderation actions such as banning/unbanning users,
/// managing moderators, handling blocked terms, and updating automod settings.
class ModerationInterfaceImpl implements ModerationInterface {
  static const String _path = 'moderation';

  final TwitchDataSource _twitchDataSource;

  ModerationInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Retrieve a list of users banned from a channel.
  ///
  /// The [props] parameter contains the properties required to fetch the banned users.
  /// Returns a [Future] that either yields a [Right] containing the [BannedUsersResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Unban a user from a channel.
  ///
  /// The [props] parameter contains the properties required to unban a user.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> unbanUser({required ModerationProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);
    assert(props.userId.isNotEmpty);

    try {
      await _twitchDataSource.delete(
          path: '$_path/bans', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Ban a user from a channel.
  ///
  /// The [props] parameter contains the properties required to ban a user.
  /// The [queryProps] parameter contains the properties required for the query.
  /// Returns a [Future] that either yields a [Right] containing the [BanUserResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, BanUserResponse>> banUser(
      {required BanUserProps props, required BroadcasterModeratorProps queryProps}) async {
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

  /// Retrieve moderators from a channel.
  ///
  /// The [props] parameter contains the properties required to fetch the moderators.
  /// Returns a [Future] that either yields a [Right] containing the [ModeratorResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Give moderator status to a user.
  ///
  /// The [props] parameter contains the properties required to add a moderator.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> addModerator({required AddModeratorProps props}) async {
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

  /// Remove the moderator status of a user from a channel.
  ///
  /// The [props] parameter contains the properties required to remove a moderator.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> removeModerator({required RemoveModeratorProps props}) async {
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

  /// Add blocked terms to a channel.
  ///
  /// The [termsProps] parameter contains the properties required to add blocked terms.
  /// The [props] parameter contains the properties required for the query.
  /// Returns a [Future] that either yields a [Right] containing the [AddBlockedTermsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, AddBlockedTermsResponse>> addBlockedTerms(
      {required AddBlockedTermsProps termsProps, required BroadcasterModeratorProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);
    assert(termsProps.text.isNotEmpty);
    assert(termsProps.text.length >= 2);
    assert(termsProps.text.length <= 500);

    try {
      final response = await _twitchDataSource.post(
          path: '$_path/blocked_terms',
          queryParams: props.toJson(),
          data: termsProps.toJson());
      return Right(AddBlockedTermsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Get the blocked terms of a channel.
  ///
  /// The [props] parameter contains the properties required to fetch the blocked terms.
  /// Returns a [Future] that either yields a [Right] containing the [GetBlockedTermsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Remove blocked terms from a channel.
  ///
  /// The [props] parameter contains the properties required to remove blocked terms.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> removeBlockedTerms({required RemoveBlockedTermsProps props}) async {
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

  /// Get the automod settings of a channel.
  ///
  /// The [props] parameter contains the properties required to fetch the automod settings.
  /// Returns a [Future] that either yields a [Right] containing the [GetAutomodSettingsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, GetAutomodSettingsResponse>> getAutomodSettings(
      {required BroadcasterModeratorProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/automod/settings', queryParams: props.toJson());
      return Right(GetAutomodSettingsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Update the automod settings of a channel.
  ///
  /// The [props] parameter contains the properties required to update the automod settings.
  /// The [updateProps] parameter contains the updated automod settings properties.
  /// Returns a [Future] that either yields a [Right] containing the [GetAutomodSettingsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, GetAutomodSettingsResponse>> updateAutomodSettings(
      {required BroadcasterModeratorProps props, required UpdateAutomodSettingsProps updateProps}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);

    try {
      final response = await _twitchDataSource.put(
          path: '$_path/automod/settings',
          queryParams: props.toJson(),
          data: updateProps.toJson());
      return Right(GetAutomodSettingsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The interface for Twitch moderation operations.
///
/// This interface defines methods to interact with the Twitch moderation API,
/// allowing you to perform moderation actions such as banning/unbanning users,
/// managing moderators, handling blocked terms, and updating automod settings.
abstract class ModerationInterface {
  Future<Either<Failure, BannedUsersResponse>> getBannedUsers(
      {required BroadcasterProps props});

  Future<Either<Failure, bool>> unbanUser({required ModerationProps props});

  Future<Either<Failure, BanUserResponse>> banUser(
      {required BanUserProps props, required BroadcasterModeratorProps queryProps});

  Future<Either<Failure, ModeratorResponse>> getModerators(
      {required BroadcasterProps props});

  Future<Either<Failure, bool>> addModerator({required AddModeratorProps props});

  Future<Either<Failure, bool>> removeModerator({required RemoveModeratorProps props});

  Future<Either<Failure, GetBlockedTermsResponse>> getBlockedTerms(
      {required GetBlockedTermsProps props});

  Future<Either<Failure, AddBlockedTermsResponse>> addBlockedTerms(
      {required AddBlockedTermsProps termsProps, required BroadcasterModeratorProps props});

  Future<Either<Failure, bool>> removeBlockedTerms({required RemoveBlockedTermsProps props});

  Future<Either<Failure, GetAutomodSettingsResponse>> getAutomodSettings(
      {required BroadcasterModeratorProps props});

  Future<Either<Failure, GetAutomodSettingsResponse>> updateAutomodSettings(
      {required BroadcasterModeratorProps props, required UpdateAutomodSettingsProps updateProps});
}
