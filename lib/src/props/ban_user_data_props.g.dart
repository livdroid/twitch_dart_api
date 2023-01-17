// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_user_data_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BanUserData _$$_BanUserDataFromJson(Map<String, dynamic> json) =>
    _$_BanUserData(
      userId: json['user_id'] as String?,
      reason: json['reason'] as String?,
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$$_BanUserDataToJson(_$_BanUserData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('reason', instance.reason);
  writeNotNull('duration', instance.duration);
  return val;
}
