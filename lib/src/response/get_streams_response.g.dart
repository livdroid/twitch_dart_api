// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_streams_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetStreamsResponse _$$_GetStreamsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetStreamsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => GetStreamsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetStreamsResponseToJson(
    _$_GetStreamsResponse instance) {
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

_$_GetStreamsResponseData _$$_GetStreamsResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_GetStreamsResponseData(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      userName: json['user_name'] as String?,
      gameId: json['game_id'] as String?,
      gameName: json['game_name'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      viewerCount: json['viewer_count'] as int?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      language: json['language'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      tagIds: json['tag_ids'] as List<dynamic>?,
      isMature: json['is_mature'] as bool?,
    );

Map<String, dynamic> _$$_GetStreamsResponseDataToJson(
    _$_GetStreamsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_name', instance.userName);
  writeNotNull('game_id', instance.gameId);
  writeNotNull('game_name', instance.gameName);
  writeNotNull('type', instance.type);
  writeNotNull('title', instance.title);
  writeNotNull('tags', instance.tags);
  writeNotNull('viewer_count', instance.viewerCount);
  writeNotNull('started_at', instance.startedAt?.toIso8601String());
  writeNotNull('language', instance.language);
  writeNotNull('thumbnail_url', instance.thumbnailUrl);
  writeNotNull('tag_ids', instance.tagIds);
  writeNotNull('is_mature', instance.isMature);
  return val;
}
