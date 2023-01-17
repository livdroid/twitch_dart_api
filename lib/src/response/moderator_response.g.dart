// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderator_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModeratorResponse _$$_ModeratorResponseFromJson(Map<String, dynamic> json) =>
    _$_ModeratorResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Moderator.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModeratorResponseToJson(
    _$_ModeratorResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e?.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}

_$_Moderator _$$_ModeratorFromJson(Map<String, dynamic> json) => _$_Moderator(
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      userName: json['user_name'] as String?,
    );

Map<String, dynamic> _$$_ModeratorToJson(_$_Moderator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_name', instance.userName);
  return val;
}

_$_Pagination _$$_PaginationFromJson(Map<String, dynamic> json) =>
    _$_Pagination(
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$$_PaginationToJson(_$_Pagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  return val;
}
