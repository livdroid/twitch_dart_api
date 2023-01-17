import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_modify_props.freezed.dart';

part 'chat_modify_props.g.dart';

@freezed
class ChatModifyProps with _$ChatModifyProps {
  const factory ChatModifyProps({
    bool? emoteMode,
    bool? followerMode,
    int? followerModeDuration,
    bool? nonModeratorChatDelay,
    int? nonModeratorChatDelayDuration,
    bool? slowMode,
    int? slowModeWaitTime,
    bool? subscriberMode,
    bool? uniqueChatMode,
  }) = _ChatModifyProps;

  factory ChatModifyProps.fromJson(Map<String, dynamic> json) =>
      _$ChatModifyPropsFromJson(json);
}
