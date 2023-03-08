// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_custom_reward_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateCustomRewardProps _$$_CreateCustomRewardPropsFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCustomRewardProps(
      title: json['title'] as String,
      cost: json['cost'] as int,
      prompt: json['prompt'] as String?,
      isEnabled: json['is_enabled'] as bool?,
      backgroundColor: json['background_color'] as String?,
      isUserInputRequired: json['is_user_input_required'] as bool?,
      isMaxPerStreamEnabled: json['is_max_per_stream_enabled'] as bool?,
      maxPerStream: json['max_per_stream'] as int?,
      isMaxPerUserPerStreamEnabled:
          json['is_max_per_user_per_stream_enabled'] as bool?,
      maxPerUserPerStream: json['max_per_user_per_stream'] as int?,
      isGlobalCooldownEnabled: json['is_global_cooldown_enabled'] as bool?,
      globalCooldownSeconds: json['global_cooldown_seconds'] as int?,
      shouldRedemptionsSkipRequestQueue:
          json['should_redemptions_skip_request_queue'] as bool?,
    );

Map<String, dynamic> _$$_CreateCustomRewardPropsToJson(
    _$_CreateCustomRewardProps instance) {
  final val = <String, dynamic>{
    'title': instance.title,
    'cost': instance.cost,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('prompt', instance.prompt);
  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('background_color', instance.backgroundColor);
  writeNotNull('is_user_input_required', instance.isUserInputRequired);
  writeNotNull('is_max_per_stream_enabled', instance.isMaxPerStreamEnabled);
  writeNotNull('max_per_stream', instance.maxPerStream);
  writeNotNull('is_max_per_user_per_stream_enabled',
      instance.isMaxPerUserPerStreamEnabled);
  writeNotNull('max_per_user_per_stream', instance.maxPerUserPerStream);
  writeNotNull('is_global_cooldown_enabled', instance.isGlobalCooldownEnabled);
  writeNotNull('global_cooldown_seconds', instance.globalCooldownSeconds);
  writeNotNull('should_redemptions_skip_request_queue',
      instance.shouldRedemptionsSkipRequestQueue);
  return val;
}
