import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/create_custom_reward_response.dart';

part 'get_custom_rewards_response.freezed.dart';
part 'get_custom_rewards_response.g.dart';

@freezed
class GetCustomRewardsResponse with _$GetCustomRewardsResponse {
  const factory GetCustomRewardsResponse({
    List<GetCustomRewardsData>? data,
  }) = _GetCustomRewardsResponse;

  factory GetCustomRewardsResponse.fromJson(Map<String, dynamic> json) => _$GetCustomRewardsResponseFromJson(json);
}

@freezed
class GetCustomRewardsData with _$GetCustomRewardsData {
  const factory GetCustomRewardsData({
    String? broadcasterName,
    String? broadcasterId,
    String? id,
    dynamic? image,
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
    dynamic? redemptionsRedeemedCurrentStream,
    dynamic? cooldownExpiresAt,
  }) = _GetCustomRewardsData;

  factory GetCustomRewardsData.fromJson(Map<String, dynamic> json) => _$GetCustomRewardsDataFromJson(json);
}