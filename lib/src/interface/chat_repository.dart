import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/props/chat_annoucement_props.dart';
import 'package:twitch_client/src/props/broadcaster_moderator_props.dart';
import 'package:twitch_client/src/props/broadcaster_props.dart';
import 'package:twitch_client/src/props/chat_modify_props.dart';
import 'package:twitch_client/src/props/chatters_props.dart';
import 'package:twitch_client/src/response/chat_settings_response.dart';
import 'package:twitch_client/src/response/chatters_response.dart';

class ChatInterfaceImpl implements ChatInterface {
  static const String _path = 'chat';

  final TwitchDataSource _twitchDataSource;

  ChatInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  @override
  Future<Either<Failure, ChattersResponse>> getChatters(
      {required ChattersProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/chatters', queryParams: props.toJson());
      return Right(ChattersResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, ChatSettingsResponse>> getChatSettings(
      {required BroadcasterProps props}) async {
    assert(props.broadcasterId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/settings', queryParams: props.toJson());
      return Right(ChatSettingsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, ChatSettingsResponse>> updateChatSettings(
      {required BroadcasterModeratorProps props,
      required ChatModifyProps chatProps}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);
    try {
      final response = await _twitchDataSource.patch(
          path: '$_path/settings',
          queryParams: props.toJson(),
          data: chatProps.toJson());
      return Right(ChatSettingsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, bool>> sendChatAnnouncement(
      {required BroadcasterModeratorProps props,
      required ChatAnnouncementProps chatProps}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);
    assert(chatProps.message.length < 501);

    try {
      final response = await _twitchDataSource.post(
          path: '$_path/announcements',
          queryParams: props.toJson(),
          data: chatProps.toJson());
      return Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class ChatInterface {
  Future<Either<Failure, ChattersResponse>> getChatters(
      {required ChattersProps props});

  Future<Either<Failure, ChatSettingsResponse>> getChatSettings(
      {required BroadcasterProps props});

  Future<Either<Failure, ChatSettingsResponse>> updateChatSettings(
      {required BroadcasterModeratorProps props,
      required ChatModifyProps chatProps});

  Future<Either<Failure, bool>> sendChatAnnouncement(
      {required BroadcasterModeratorProps props,
      required ChatAnnouncementProps chatProps});
}
