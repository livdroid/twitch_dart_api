// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RaidResponse _$$_RaidResponseFromJson(Map<String, dynamic> json) =>
    _$_RaidResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : RaidResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RaidResponseToJson(_$_RaidResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e?.toJson()).toList());
  return val;
}

_$_RaidResponseData _$$_RaidResponseDataFromJson(Map<String, dynamic> json) =>
    _$_RaidResponseData(
      createdAt: json['created_at'] as String?,
      isMature: json['is_mature'] as bool?,
    );

Map<String, dynamic> _$$_RaidResponseDataToJson(_$_RaidResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('is_mature', instance.isMature);
  return val;
}
