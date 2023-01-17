import 'package:freezed_annotation/freezed_annotation.dart';

part 'broadcaster_props.freezed.dart';

part 'broadcaster_props.g.dart';

@freezed
class BroadcasterProps with _$BroadcasterProps {
  const factory BroadcasterProps({required String broadcasterId}) =
      _BroadcasterProps;

  factory BroadcasterProps.fromJson(Map<String, dynamic> json) =>
      _$BroadcasterPropsFromJson(json);
}
