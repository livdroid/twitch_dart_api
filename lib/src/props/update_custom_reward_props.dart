import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_custom_reward_props.freezed.dart';

part 'update_custom_reward_props.g.dart';

@freezed
class UpdateCustomRewardProps with _$UpdateCustomRewardProps {
  const factory UpdateCustomRewardProps({
    String? backgroundColor,
    bool? isEnabled,
    int? cost,
    String? title,
    String? prompt,
    bool? isUserInputRequired,
    int? maxPerStream,
    bool? isMaxPerStreamEnabled,
    bool? isMaxPerUserPerStreamEnabled,
    int? maxPerUserPerStream,
    bool? isGlobalCooldownEnabled,
    int? globalCooldownSeconds,
    bool? isPaused,
    bool? shouldRedemptionsSkipRequestQueue,
  }) = _UpdateCustomRewardProps;

  factory UpdateCustomRewardProps.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomRewardPropsFromJson(json);
}
