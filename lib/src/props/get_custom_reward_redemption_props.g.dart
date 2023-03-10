// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_custom_reward_redemption_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCustomRewardRedemptionProps _$$_GetCustomRewardRedemptionPropsFromJson(
        Map<String, dynamic> json) =>
    _$_GetCustomRewardRedemptionProps(
      broadcasterId: json['broadcaster_id'] as String,
      rewardId: json['reward_id'] as String,
      status: json['status'] as String?,
      id: json['id'] as String?,
      sort: json['sort'] as String?,
      after: json['after'] as String?,
      first: json['first'] as int?,
    );

Map<String, dynamic> _$$_GetCustomRewardRedemptionPropsToJson(
    _$_GetCustomRewardRedemptionProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
    'reward_id': instance.rewardId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('id', instance.id);
  writeNotNull('sort', instance.sort);
  writeNotNull('after', instance.after);
  writeNotNull('first', instance.first);
  return val;
}
