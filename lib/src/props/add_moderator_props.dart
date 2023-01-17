import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_moderator_props.freezed.dart';
part 'add_moderator_props.g.dart';

@freezed
class AddModeratorProps with _$AddModeratorProps {
  const factory AddModeratorProps({
    required String broadcasterId,
    required String userId,
}) = _AddModeratorProps;

  factory AddModeratorProps.fromJson(Map<String, dynamic> json) =>
      _$AddModeratorPropsFromJson(json);
}
