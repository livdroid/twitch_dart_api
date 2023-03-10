// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_custom_reward_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateCustomRewardProps _$$_UpdateCustomRewardPropsFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateCustomRewardProps(
      backgroundColor: json['background_color'] as String?,
      isEnabled: json['is_enabled'] as bool?,
      cost: json['cost'] as int?,
      title: json['title'] as String?,
      prompt: json['prompt'] as String?,
      isUserInputRequired: json['is_user_input_required'] as bool?,
      maxPerStream: json['max_per_stream'] as int?,
      isMaxPerStreamEnabled: json['is_max_per_stream_enabled'] as bool?,
      isMaxPerUserPerStreamEnabled:
          json['is_max_per_user_per_stream_enabled'] as bool?,
      maxPerUserPerStream: json['max_per_user_per_stream'] as int?,
      isGlobalCooldownEnabled: json['is_global_cooldown_enabled'] as bool?,
      globalCooldownSeconds: json['global_cooldown_seconds'] as int?,
      isPaused: json['is_paused'] as bool?,
      shouldRedemptionsSkipRequestQueue:
          json['should_redemptions_skip_request_queue'] as bool?,
    );

Map<String, dynamic> _$$_UpdateCustomRewardPropsToJson(
    _$_UpdateCustomRewardProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('background_color', instance.backgroundColor);
  writeNotNull('is_enabled', instance.isEnabled);
  writeNotNull('cost', instance.cost);
  writeNotNull('title', instance.title);
  writeNotNull('prompt', instance.prompt);
  writeNotNull('is_user_input_required', instance.isUserInputRequired);
  writeNotNull('max_per_stream', instance.maxPerStream);
  writeNotNull('is_max_per_stream_enabled', instance.isMaxPerStreamEnabled);
  writeNotNull('is_max_per_user_per_stream_enabled',
      instance.isMaxPerUserPerStreamEnabled);
  writeNotNull('max_per_user_per_stream', instance.maxPerUserPerStream);
  writeNotNull('is_global_cooldown_enabled', instance.isGlobalCooldownEnabled);
  writeNotNull('global_cooldown_seconds', instance.globalCooldownSeconds);
  writeNotNull('is_paused', instance.isPaused);
  writeNotNull('should_redemptions_skip_request_queue',
      instance.shouldRedemptionsSkipRequestQueue);
  return val;
}
