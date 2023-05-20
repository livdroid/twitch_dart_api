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

/// The implementation of the ChatInterface.
///
/// This class provides methods to interact with the Twitch Chat API, allowing you to retrieve chat-related information,
/// modify chat settings, and send chat announcements.
class ChatInterfaceImpl implements ChatInterface {
  static const String _path = 'chat';

  final TwitchDataSource _twitchDataSource;

  /// Creates an instance of [ChatInterfaceImpl].
  ///
  /// The [token] is the access token required for authentication with the Twitch API.
  /// The [clientId] is the client ID associated with the Twitch application.
  /// The optional [dataSource] parameter allows injecting a custom [TwitchDataSource] implementation.
  ChatInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Retrieve the chatters in a channel.
  ///
  /// The [props] parameter contains the properties required to fetch chatters.
  /// Returns a [Future] that either yields a [Right] containing the [ChattersResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Retrieve chat settings for a channel.
  ///
  /// The [props] parameter contains the properties required to fetch chat settings.
  /// Returns a [Future] that either yields a [Right] containing the [ChatSettingsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Update chat settings for a channel.
  ///
  /// The [props] parameter contains the properties of the broadcaster and moderator associated with the channel.
  /// The [chatProps] parameter contains the properties to update the chat settings.
  /// Returns a [Future] that either yields a [Right] containing the [ChatSettingsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Send a chat announcement to a channel.
  ///
  /// The [props] parameter contains the properties of the broadcaster and moderator associated with the channel.
  /// The [chatProps] parameter contains the properties of the chat announcement.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> sendChatAnnouncement(
      {required BroadcasterModeratorProps props,
        required ChatAnnouncementProps chatProps}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.moderatorId.isNotEmpty);
    assert(chatProps.message.length < 501);

    try {
      await _twitchDataSource.post(
          path: '$_path/announcements',
          queryParams: props.toJson(),
          data: chatProps.toJson());
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The contract for the ChatInterface.
///
/// This abstract class defines the methods to interact with the Twitch Chat API,
/// allowing you to retrieve chat-related information, modify chat settings, and send chat announcements.
abstract class ChatInterface {
  /// Retrieve the chatters in a channel.
  ///
  /// The [props] parameter contains the properties required to fetch chatters.
  /// Returns a [Future] that either yields a [Right] containing the [ChattersResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, ChattersResponse>> getChatters(
      {required ChattersProps props});

  /// Retrieve chat settings for a channel.
  ///
  /// The [props] parameter contains the properties required to fetch chat settings.
  /// Returns a [Future] that either yields a [Right] containing the [ChatSettingsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, ChatSettingsResponse>> getChatSettings(
      {required BroadcasterProps props});

  /// Update chat settings for a channel.
  ///
  /// The [props] parameter contains the properties of the broadcaster and moderator associated with the channel.
  /// The [chatProps] parameter contains the properties to update the chat settings.
  /// Returns a [Future] that either yields a [Right] containing the [ChatSettingsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, ChatSettingsResponse>> updateChatSettings(
      {required BroadcasterModeratorProps props,
        required ChatModifyProps chatProps});

  /// Send a chat announcement to a channel.
  ///
  /// The [props] parameter contains the properties of the broadcaster and moderator associated with the channel.
  /// The [chatProps] parameter contains the properties of the chat announcement.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, bool>> sendChatAnnouncement(
      {required BroadcasterModeratorProps props,
        required ChatAnnouncementProps chatProps});
}
