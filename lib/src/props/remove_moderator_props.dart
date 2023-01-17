import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_moderator_props.freezed.dart';
part 'remove_moderator_props.g.dart';

@freezed
class RemoveModeratorProps with _$RemoveModeratorProps {
  const factory RemoveModeratorProps({
    required String broadcasterId,
    required String userId,
  }) = _RemoveModeratorProps;

  factory RemoveModeratorProps.fromJson(Map<String, dynamic> json) =>
      _$RemoveModeratorPropsFromJson(json);
}
