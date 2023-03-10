import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/create_custom_reward_response.dart';

part 'get_custom_rewards_response.freezed.dart';
part 'get_custom_rewards_response.g.dart';

@freezed
class GetCustomRewardsResponse with _$GetCustomRewardsResponse {
  const factory GetCustomRewardsResponse({
    List<GetCustomRewardsDataResponse>? data,
  }) = _GetCustomRewardsResponse;

  factory GetCustomRewardsResponse.fromJson(Map<String, dynamic> json) => _$GetCustomRewardsResponseFromJson(json);
}

@freezed
class GetCustomRewardsDataResponse with _$GetCustomRewardsDataResponse {
  const factory GetCustomRewardsDataResponse({
    String? broadcasterName,
    String? broadcasterId,
    String? id,
    DefaultImage? image,
    String? backgroundColor,
    bool? isEnabled,
    int? cost,
    String? title,
    String? prompt,
    bool? isUserInputRequired,
    MaxPerStreamSetting? maxPerStreamSetting,
    MaxPerUserPerStreamSetting? maxPerUserPerStreamSetting,
    GlobalCooldownSetting? globalCooldownSetting,
    bool? isPaused,
    bool? isInStock,
    DefaultImage? defaultImage,
    bool? shouldRedemptionsSkipRequestQueue,
    int? redemptionsRedeemedCurrentStream,
    String? cooldownExpiresAt,
  }) = _GetCustomRewardsDataResponse;

  factory GetCustomRewardsDataResponse.fromJson(Map<String, dynamic> json) => _$GetCustomRewardsDataResponseFromJson(json);
}