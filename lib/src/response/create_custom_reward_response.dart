import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_custom_reward_response.freezed.dart';
part 'create_custom_reward_response.g.dart';

@freezed
class CreateCustomRewardResponse with _$CreateCustomRewardResponse {
  const factory CreateCustomRewardResponse({
    List<Datum>? data,
  }) = _CreateCustomRewardResponse;

  factory CreateCustomRewardResponse.fromJson(Map<String, dynamic> json) => _$CreateCustomRewardResponseFromJson(json);
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

@freezed
class DefaultImage with _$DefaultImage {
  const factory DefaultImage({
    String? url1X,
    String? url2X,
    String? url4X,
  }) = _DefaultImage;

  factory DefaultImage.fromJson(Map<String, dynamic> json) => _$DefaultImageFromJson(json);
}

@freezed
class GlobalCooldownSetting with _$GlobalCooldownSetting {
  const factory GlobalCooldownSetting({
    bool? isEnabled,
    int? globalCooldownSeconds,
  }) = _GlobalCooldownSetting;

  factory GlobalCooldownSetting.fromJson(Map<String, dynamic> json) => _$GlobalCooldownSettingFromJson(json);
}

@freezed
class MaxPerStreamSetting with _$MaxPerStreamSetting {
  const factory MaxPerStreamSetting({
    bool? isEnabled,
    int? maxPerStream,
  }) = _MaxPerStreamSetting;

  factory MaxPerStreamSetting.fromJson(Map<String, dynamic> json) => _$MaxPerStreamSettingFromJson(json);
}

@freezed
class MaxPerUserPerStreamSetting with _$MaxPerUserPerStreamSetting {
  const factory MaxPerUserPerStreamSetting({
    bool? isEnabled,
    int? maxPerUserPerStream,
  }) = _MaxPerUserPerStreamSetting;

  factory MaxPerUserPerStreamSetting.fromJson(Map<String, dynamic> json) => _$MaxPerUserPerStreamSettingFromJson(json);
}
