// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BanUserResponse _$$_BanUserResponseFromJson(Map<String, dynamic> json) =>
    _$_BanUserResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BanUserResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BanUserResponseToJson(_$_BanUserResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_BanUserResponseData _$$_BanUserResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_BanUserResponseData(
      broadcasterId: json['broadcaster_id'] as String?,
      moderatorId: json['moderator_id'] as String?,
      userId: json['user_id'] as String?,
      createdAt: json['created_at'] as String?,
      endTime: json['end_time'] as String?,
    );

Map<String, dynamic> _$$_BanUserResponseDataToJson(
    _$_BanUserResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('moderator_id', instance.moderatorId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('end_time', instance.endTime);
  return val;
}
