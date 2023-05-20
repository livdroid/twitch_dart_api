import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_raid_props.g.dart';

part 'start_raid_props.freezed.dart';

@freezed
class RaidProps with _$RaidProps {
  const factory RaidProps({
    required String fromBroadcasterId,
    required String toBroadcasterId,
  }) = _RaidProps;

  factory RaidProps.fromJson(Map<String, dynamic> json) =>
      _$RaidPropsFromJson(json);
}