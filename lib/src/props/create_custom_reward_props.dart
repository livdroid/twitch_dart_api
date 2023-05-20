import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_custom_reward_props.freezed.dart';
part 'create_custom_reward_props.g.dart';

@freezed
class CreateCustomRewardProps with _$CreateCustomRewardProps {
  const factory CreateCustomRewardProps({
    required String title,
    required int cost,
    String? prompt,
    bool? isEnabled,
    String? backgroundColor,
    bool? isUserInputRequired,
    bool? isMaxPerStreamEnabled,
    int? maxPerStream,
    bool? isMaxPerUserPerStreamEnabled,
    int? maxPerUserPerStream,
    bool? isGlobalCooldownEnabled,
    int? globalCooldownSeconds,
    bool? shouldRedemptionsSkipRequestQueue
  }) = _CreateCustomRewardProps;

  factory CreateCustomRewardProps.fromJson(Map<String, dynamic> json) => _$CreateCustomRewardPropsFromJson(json);
}
