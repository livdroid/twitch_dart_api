// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatSettingsResponse _$$_ChatSettingsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChatSettingsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ChatSettingsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatSettingsResponseToJson(
    _$_ChatSettingsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_ChatSettingsData _$$_ChatSettingsDataFromJson(Map<String, dynamic> json) =>
    _$_ChatSettingsData(
      broadcasterId: json['broadcaster_id'] as String?,
      moderatorId: json['moderator_id'] as String?,
      slowMode: json['slow_mode'] as bool?,
      slowModeWaitTime: json['slow_mode_wait_time'] as int?,
      followerMode: json['follower_mode'] as bool?,
      followerModeDuration: json['follower_mode_duration'] as int?,
      subscriberMode: json['subscriber_mode'] as bool?,
      emoteMode: json['emote_mode'] as bool?,
      uniqueChatMode: json['unique_chat_mode'] as bool?,
      nonModeratorChatDelay: json['non_moderator_chat_delay'] as bool?,
      nonModeratorChatDelayDuration:
          json['non_moderator_chat_delay_duration'] as int?,
    );

Map<String, dynamic> _$$_ChatSettingsDataToJson(_$_ChatSettingsData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('moderator_id', instance.moderatorId);
  writeNotNull('slow_mode', instance.slowMode);
  writeNotNull('slow_mode_wait_time', instance.slowModeWaitTime);
  writeNotNull('follower_mode', instance.followerMode);
  writeNotNull('follower_mode_duration', instance.followerModeDuration);
  writeNotNull('subscriber_mode', instance.subscriberMode);
  writeNotNull('emote_mode', instance.emoteMode);
  writeNotNull('unique_chat_mode', instance.uniqueChatMode);
  writeNotNull('non_moderator_chat_delay', instance.nonModeratorChatDelay);
  writeNotNull('non_moderator_chat_delay_duration',
      instance.nonModeratorChatDelayDuration);
  return val;
}
