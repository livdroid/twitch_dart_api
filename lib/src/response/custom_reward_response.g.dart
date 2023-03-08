// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_reward_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomRewardResponse _$$_CustomRewardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CustomRewardResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CustomRewardResponseToJson(
    _$_CustomRewardResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      broadcasterName: json['broadcaster_name'] as String?,
      broadcasterLogin: json['broadcaster_login'] as String?,
      broadcasterId: json['broadcaster_id'] as String?,
      id: json['id'] as String?,
      image: json['image'],
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
          json['redemptions_redeemed_current_stream'],
      cooldownExpiresAt: json['cooldown_expires_at'],
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_name', instance.broadcasterName);
  writeNotNull('broadcaster_login', instance.broadcasterLogin);
  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('id', instance.id);
  writeNotNull('image', instance.image);
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

_$_DefaultImage _$$_DefaultImageFromJson(Map<String, dynamic> json) =>
    _$_DefaultImage(
      url1X: json['url1_x'] as String?,
      url2X: json['url2_x'] as String?,
      url4X: json['url4_x'] as String?,
    );

Map<String, dynamic> _$$_DefaultImageToJson(_$_DefaultImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url1_x', instance.url1X);
  writeNotNull('url2_x', instance.url2X);
  writeNotNull('url4_x', instance.url4X);
  return val;
}

_$_GlobalCooldownSetting _$$_GlobalCooldownSettingFromJson(
        Map<String, dynamic> json) =>
    _$_GlobalCooldownSetting(
      isEnabled: json['is_enabled'] as bool?,
      globalCooldownSeconds: json['global_cooldown_seconds'] as int?,
    );

Map<String, dynamic> _$$_GlobalCooldownSettingToJson(
    _$_GlobalCooldownSetting instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('global_cooldown_seconds', instance.globalCooldownSeconds);
  return val;
}

_$_MaxPerStreamSetting _$$_MaxPerStreamSettingFromJson(
        Map<String, dynamic> json) =>
    _$_MaxPerStreamSetting(
      isEnabled: json['is_enabled'] as bool?,
      maxPerStream: json['max_per_stream'] as int?,
    );

Map<String, dynamic> _$$_MaxPerStreamSettingToJson(
    _$_MaxPerStreamSetting instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('max_per_stream', instance.maxPerStream);
  return val;
}

_$_MaxPerUserPerStreamSetting _$$_MaxPerUserPerStreamSettingFromJson(
        Map<String, dynamic> json) =>
    _$_MaxPerUserPerStreamSetting(
      isEnabled: json['is_enabled'] as bool?,
      maxPerUserPerStream: json['max_per_user_per_stream'] as int?,
    );

Map<String, dynamic> _$$_MaxPerUserPerStreamSettingToJson(
    _$_MaxPerUserPerStreamSetting instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('max_per_user_per_stream', instance.maxPerUserPerStream);
  return val;
}
