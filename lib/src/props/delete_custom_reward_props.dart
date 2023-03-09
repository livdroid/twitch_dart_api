import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_custom_reward_props.freezed.dart';
part 'delete_custom_reward_props.g.dart';

@freezed
class DeleteCustomRewardProps with _$DeleteCustomRewardProps {
  const factory DeleteCustomRewardProps({
    required String broadcasterId,
    required String id,
}) = _DeleteCustomRewardProps;

  factory DeleteCustomRewardProps.fromJson(Map<String, dynamic> json) =>
      _$DeleteCustomRewardPropsFromJson(json);
}