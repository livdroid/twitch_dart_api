// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_custom_rewards_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCustomRewardsProps _$$_GetCustomRewardsPropsFromJson(
        Map<String, dynamic> json) =>
    _$_GetCustomRewardsProps(
      broadcasterId: json['broadcaster_id'] as String,
      id: json['id'] as String?,
      onlyManageableRewards: json['only_manageable_rewards'] as bool?,
    );

Map<String, dynamic> _$$_GetCustomRewardsPropsToJson(
    _$_GetCustomRewardsProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('only_manageable_rewards', instance.onlyManageableRewards);
  return val;
}
