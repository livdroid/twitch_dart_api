import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/get_custom_reward_redemptions_response.dart';

part 'update_custom_reward_redemption_response.freezed.dart';

part 'update_custom_reward_redemption_response.g.dart';

@freezed
class UpdateCustomRewardRedemptionResponse
    with _$UpdateCustomRewardRedemptionResponse {
  const factory UpdateCustomRewardRedemptionResponse({
    List<UpdateCustomRewardRedemption>? data,
  }) = _UpdateCustomRewardRedemptionResponse;

  factory UpdateCustomRewardRedemptionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateCustomRewardRedemptionResponseFromJson(json);
}

@freezed
class UpdateCustomRewardRedemption with _$UpdateCustomRewardRedemption {
  const factory UpdateCustomRewardRedemption({
    String? broadcasterName,
    String? broadcasterLogin,
    String? broadcasterId,
    String? id,
    String? userId,
    String? userName,
    String? userLogin,
    String? userInput,
    String? status,
    DateTime? redeemedAt,
    Reward? reward,
  }) = _UpdateCustomRewardRedemption;

  factory UpdateCustomRewardRedemption.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomRewardRedemptionFromJson(json);
}
