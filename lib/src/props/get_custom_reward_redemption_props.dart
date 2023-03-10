import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_custom_reward_redemption_props.freezed.dart';

part 'get_custom_reward_redemption_props.g.dart';

@freezed
class GetCustomRewardRedemptionProps with _$GetCustomRewardRedemptionProps {
  const factory GetCustomRewardRedemptionProps({
    required String broadcasterId,
    required String rewardId,
    String? status,
    String? id,
    String? sort,
    String? after,
    int? first,
  }) = _GetCustomRewardRedemptionProps;

  factory GetCustomRewardRedemptionProps.fromJson(Map<String, dynamic> json) =>
      _$GetCustomRewardRedemptionPropsFromJson(json);
}

enum Status {
  CANCELED,
  FULFILLED,
  UNFULFILLED
}

enum Sort {
  OLDEST,
  NEWEST
}