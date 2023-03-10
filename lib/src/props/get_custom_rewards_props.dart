import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_custom_rewards_props.freezed.dart';
part 'get_custom_rewards_props.g.dart';

@freezed
class GetCustomRewardsProps with _$GetCustomRewardsProps {
  const factory GetCustomRewardsProps({
    required String broadcasterId,
    String? id,
    bool? onlyManageableRewards
}) = _GetCustomRewardsProps;

  factory GetCustomRewardsProps.fromJson(Map<String, dynamic> json) =>
      _$GetCustomRewardsPropsFromJson(json);
}