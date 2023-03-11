// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_custom_reward_redemption_status_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateCustomRewardRedemptionStatusProps
    _$$_UpdateCustomRewardRedemptionStatusPropsFromJson(
            Map<String, dynamic> json) =>
        _$_UpdateCustomRewardRedemptionStatusProps(
          status: json['status'] as String?,
        );

Map<String, dynamic> _$$_UpdateCustomRewardRedemptionStatusPropsToJson(
    _$_UpdateCustomRewardRedemptionStatusProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  return val;
}
