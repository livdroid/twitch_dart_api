// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banned_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannedUsersResponse _$$_BannedUsersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BannedUsersResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BannedUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BannedUsersResponseToJson(
    _$_BannedUsersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}
