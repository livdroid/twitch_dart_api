import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_custom_reward_redemption_status_props.freezed.dart';
part 'update_custom_reward_redemption_status_props.g.dart';


@freezed
class UpdateCustomRewardRedemptionStatusProps with _$UpdateCustomRewardRedemptionStatusProps {
  const factory UpdateCustomRewardRedemptionStatusProps({
    String? status,
  }) = _UpdateCustomRewardRedemptionStatusProps;

  factory UpdateCustomRewardRedemptionStatusProps.fromJson(Map<String, dynamic> json) => _$UpdateCustomRewardRedemptionStatusPropsFromJson(json);
}
