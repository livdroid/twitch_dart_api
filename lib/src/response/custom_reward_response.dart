import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:twitch_client/twitch_client.dart';

part 'custom_reward_response.freezed.dart';
part 'custom_reward_response.g.dart';

@freezed
class CustomRewardResponse with _$CustomRewardResponse {
  const factory CustomRewardResponse({
    List<Datum>? data,
  }) = _CustomRewardResponse;

  factory CustomRewardResponse.fromJson(Map<String, dynamic> json) => _$CustomRewardResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? broadcasterName,
    String? broadcasterLogin,
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
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}