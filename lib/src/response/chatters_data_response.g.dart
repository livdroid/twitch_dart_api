// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatters_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChattersData _$$_ChattersDataFromJson(Map<String, dynamic> json) =>
    _$_ChattersData(
      userId: json['user_id'] as String?,
      userName: json['user_name'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_ChattersDataToJson(_$_ChattersData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('user_name', instance.userName);
  writeNotNull('created_at', instance.createdAt);
  return val;
}
