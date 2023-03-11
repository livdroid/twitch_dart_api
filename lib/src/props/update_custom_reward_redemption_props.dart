import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_custom_reward_redemption_props.freezed.dart';

part 'update_custom_reward_redemption_props.g.dart';

@freezed
class UpdateCustomRewardRedemptionProps
    with _$UpdateCustomRewardRedemptionProps {
  const factory UpdateCustomRewardRedemptionProps({
    required String id,
    required String broadcasterId,
    required String rewardId
}) = _UpdateCustomRewardRedemptionProps;

  factory UpdateCustomRewardRedemptionProps.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateCustomRewardRedemptionPropsFromJson(json);
}
