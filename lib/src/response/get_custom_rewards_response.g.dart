// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_custom_rewards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCustomRewardsResponse _$$_GetCustomRewardsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetCustomRewardsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              GetCustomRewardsDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetCustomRewardsResponseToJson(
    _$_GetCustomRewardsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_GetCustomRewardsDataResponse _$$_GetCustomRewardsDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetCustomRewardsDataResponse(
      broadcasterName: json['broadcaster_name'] as String?,
      broadcasterId: json['broadcaster_id'] as String?,
      id: json['id'] as String?,
      image: json['image'] == null
          ? null
          : DefaultImage.fromJson(json['image'] as Map<String, dynamic>),
      backgroundColor: json['background_color'] as String?,
      isEnabled: json['is_enabled'] as bool?,
      cost: json['cost'] as int?,
      title: json['title'] as String?,
      prompt: json['prompt'] as String?,
      isUserInputRequired: json['is_user_input_required'] as bool?,
      maxPerStreamSetting: json['max_per_stream_setting'] == null
          ? null
          : MaxPerStreamSetting.fromJson(
              json['max_per_stream_setting'] as Map<String, dynamic>),
      maxPerUserPerStreamSetting: json['max_per_user_per_stream_setting'] ==
              null
          ? null
          : MaxPerUserPerStreamSetting.fromJson(
              json['max_per_user_per_stream_setting'] as Map<String, dynamic>),
      globalCooldownSetting: json['global_cooldown_setting'] == null
          ? null
          : GlobalCooldownSetting.fromJson(
              json['global_cooldown_setting'] as Map<String, dynamic>),
      isPaused: json['is_paused'] as bool?,
      isInStock: json['is_in_stock'] as bool?,
      defaultImage: json['default_image'] == null
          ? null
          : DefaultImage.fromJson(
              json['default_image'] as Map<String, dynamic>),
      shouldRedemptionsSkipRequestQueue:
          json['should_redemptions_skip_request_queue'] as bool?,
      redemptionsRedeemedCurrentStream:
          json['redemptions_redeemed_current_stream'] as int?,
      cooldownExpiresAt: json['cooldown_expires_at'] as String?,
    );

Map<String, dynamic> _$$_GetCustomRewardsDataResponseToJson(
    _$_GetCustomRewardsDataResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_name', instance.broadcasterName);
  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('id', instance.id);
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('background_color', instance.backgroundColor);
  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('cost', instance.cost);
  writeNotNull('title', instance.title);
  writeNotNull('prompt', instance.prompt);
  writeNotNull('is_user_input_required', instance.isUserInputRequired);
  writeNotNull(
      'max_per_stream_setting', instance.maxPerStreamSetting?.toJson());
  writeNotNull('max_per_user_per_stream_setting',
      instance.maxPerUserPerStreamSetting?.toJson());
  writeNotNull(
      'global_cooldown_setting', instance.globalCooldownSetting?.toJson());
  writeNotNull('is_paused', instance.isPaused);
  writeNotNull('is_in_stock', instance.isInStock);
  writeNotNull('default_image', instance.defaultImage?.toJson());
  writeNotNull('should_redemptions_skip_request_queue',
      instance.shouldRedemptionsSkipRequestQueue);
  writeNotNull('redemptions_redeemed_current_stream',
      instance.redemptionsRedeemedCurrentStream);
  writeNotNull('cooldown_expires_at', instance.cooldownExpiresAt);
  return val;
}
