class ChatSettingsResponse {
  final List<ChatSettingsData>? data;

  ChatSettingsResponse({this.data});

  factory ChatSettingsResponse.fromJson(Map<String, dynamic> json) =>
      ChatSettingsResponse(
          data: List<ChatSettingsData>.from(
              json['data'].map((v) => ChatSettingsData.fromJson(v))));
}

class ChatSettingsData {
  final String? broadcasterId;
  final String? moderatorId;
  final bool? slowMode;
  final int? slowModeWaitTime;
  final bool? followerMode;
  final int? followerModeDuration;
  final bool? subscriberMode;
  final bool? emoteMode;
  final bool? uniqueChatMode;
  final bool? nonModeratorChatDelay;
  final int? nonModeratorChatDelayDuration;

  ChatSettingsData(
      {this.broadcasterId,
      this.moderatorId,
      this.slowMode,
      this.slowModeWaitTime,
      this.followerMode,
      this.followerModeDuration,
      this.subscriberMode,
      this.emoteMode,
      this.uniqueChatMode,
      this.nonModeratorChatDelay,
      this.nonModeratorChatDelayDuration});

  factory ChatSettingsData.fromJson(Map<String, dynamic> json) =>
      ChatSettingsData(
          broadcasterId: json['broadcaster_id'],
          moderatorId: json['moderator_id'],
          slowMode: json['slow_mode'],
          slowModeWaitTime: json['slow_mode_wait_time'],
          followerMode: json['follower_mode'],
          followerModeDuration: json['follower_mode_duration'],
          subscriberMode: json['subscriber_mode'],
          emoteMode: json['emote_mode'],
          uniqueChatMode: json['unique_chat_mode'],
          nonModeratorChatDelay: json['non_moderator_chat_delay'],
          nonModeratorChatDelayDuration:
              json['non_moderator_chat_delay_duration']);
}
