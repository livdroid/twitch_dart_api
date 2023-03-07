import 'package:freezed_annotation/freezed_annotation.dart';

part 'broadcaster_moderator_props.freezed.dart';

part 'broadcaster_moderator_props.g.dart';

@freezed
class BroadcasterModeratorProps with _$BroadcasterModeratorProps {
  const factory BroadcasterModeratorProps(
      {required String broadcasterId,
      required String moderatorId}) = _BroadcasterModeratorProps;

  factory BroadcasterModeratorProps.fromJson(Map<String, dynamic> json) =>
      _$BroadcasterModeratorPropsFromJson(json);
}
