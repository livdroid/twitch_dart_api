// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_custom_reward_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateCustomRewardResponse _$$_CreateCustomRewardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCustomRewardResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetCustomRewardsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreateCustomRewardResponseToJson(
    _$_CreateCustomRewardResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
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
