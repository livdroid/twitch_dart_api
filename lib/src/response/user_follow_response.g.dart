// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_follow_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserFollowResponse _$$_UserFollowResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserFollowResponse(
      total: json['total'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserFollowData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserFollowResponseToJson(
    _$_UserFollowResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}

_$_UserFollowData _$$_UserFollowDataFromJson(Map<String, dynamic> json) =>
    _$_UserFollowData(
      fromId: json['from_id'] as String?,
      fromLogin: json['from_login'] as String?,
      fromName: json['from_name'] as String?,
      toId: json['to_id'] as String?,
      toName: json['to_name'] as String?,
      followedAt: json['followed_at'] as String?,
    );

Map<String, dynamic> _$$_UserFollowDataToJson(_$_UserFollowData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from_id', instance.fromId);
  writeNotNull('from_login', instance.fromLogin);
  writeNotNull('from_name', instance.fromName);
  writeNotNull('to_id', instance.toId);
  writeNotNull('to_name', instance.toName);
  writeNotNull('followed_at', instance.followedAt);
  return val;
}
