import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'get_custom_reward_redemptions_response.freezed.dart';
part 'get_custom_reward_redemptions_response.g.dart';

@freezed
class GetCustomRewardRedemptionResponse with _$GetCustomRewardRedemptionResponse {
  const factory GetCustomRewardRedemptionResponse({
    List<GetCustomRewardRedemptionResponseData>? data,
    Pagination? pagination,
  }) = _GetCustomRewardRedemptionResponse;

  factory GetCustomRewardRedemptionResponse.fromJson(Map<String, dynamic> json) => _$GetCustomRewardRedemptionResponseFromJson(json);
}

@freezed
class GetCustomRewardRedemptionResponseData with _$GetCustomRewardRedemptionResponseData {
  const factory GetCustomRewardRedemptionResponseData({
    String? broadcasterName,
    String? broadcasterLogin,
    String? broadcasterId,
    String? id,
    String? userLogin,
    String? userId,
    String? userName,
    String? userInput,
    String? status,
    DateTime? redeemedAt,
    Reward? reward,
  }) = _GetCustomRewardRedemptionResponseData;

  factory GetCustomRewardRedemptionResponseData.fromJson(Map<String, dynamic> json) => _$GetCustomRewardRedemptionResponseDataFromJson(json);
}

@freezed
class Reward with _$Reward {
  const factory Reward({
    String? id,
    String? title,
    String? prompt,
    int? cost,
  }) = _Reward;

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);
}
