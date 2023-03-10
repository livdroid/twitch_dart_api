import 'package:freezed_annotation/freezed_annotation.dart';

part 'broadcaster_id_props.freezed.dart';
part 'broadcaster_id_props.g.dart';

@freezed
class BroadcasterAndIdProps with _$BroadcasterAndIdProps {
  const factory BroadcasterAndIdProps({
    required String broadcasterId,
    required String id,
  }) = _BroadcasterAndId;

  factory BroadcasterAndIdProps.fromJson(Map<String, dynamic> json) =>
      _$BroadcasterAndIdPropsFromJson(json);
}