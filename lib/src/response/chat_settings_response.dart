import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_settings_response.freezed.dart';

part 'chat_settings_response.g.dart';

@freezed
class ChatSettingsResponse with _$ChatSettingsResponse {
  const factory ChatSettingsResponse({List<ChatSettingsData>? data}) =
      _ChatSettingsResponse;

  factory ChatSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatSettingsResponseFromJson(json);
}

@freezed
class ChatSettingsData with _$ChatSettingsData {
  const factory ChatSettingsData(
      {String? broadcasterId,
      String? moderatorId,
      bool? slowMode,
      int? slowModeWaitTime,
      bool? followerMode,
      int? followerModeDuration,
      bool? subscriberMode,
      bool? emoteMode,
      bool? uniqueChatMode,
      bool? nonModeratorChatDelay,
      int? nonModeratorChatDelayDuration}) = _ChatSettingsData;

  factory ChatSettingsData.fromJson(Map<String, dynamic> json) =>
      _$ChatSettingsDataFromJson(json);
}
