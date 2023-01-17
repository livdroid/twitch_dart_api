// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_modify_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModifyProps _$$_ChatModifyPropsFromJson(Map<String, dynamic> json) =>
    _$_ChatModifyProps(
      emoteMode: json['emote_mode'] as bool?,
      followerMode: json['follower_mode'] as bool?,
      followerModeDuration: json['follower_mode_duration'] as int?,
      nonModeratorChatDelay: json['non_moderator_chat_delay'] as bool?,
      nonModeratorChatDelayDuration:
          json['non_moderator_chat_delay_duration'] as int?,
      slowMode: json['slow_mode'] as bool?,
      slowModeWaitTime: json['slow_mode_wait_time'] as int?,
      subscriberMode: json['subscriber_mode'] as bool?,
      uniqueChatMode: json['unique_chat_mode'] as bool?,
    );

Map<String, dynamic> _$$_ChatModifyPropsToJson(_$_ChatModifyProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emote_mode', instance.emoteMode);
  writeNotNull('follower_mode', instance.followerMode);
  writeNotNull('follower_mode_duration', instance.followerModeDuration);
  writeNotNull('non_moderator_chat_delay', instance.nonModeratorChatDelay);
  writeNotNull('non_moderator_chat_delay_duration',
      instance.nonModeratorChatDelayDuration);
  writeNotNull('slow_mode', instance.slowMode);
  writeNotNull('slow_mode_wait_time', instance.slowModeWaitTime);
  writeNotNull('subscriber_mode', instance.subscriberMode);
  writeNotNull('unique_chat_mode', instance.uniqueChatMode);
  return val;
}
