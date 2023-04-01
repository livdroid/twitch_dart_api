// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_clip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetClipResponse _$$_GetClipResponseFromJson(Map<String, dynamic> json) =>
    _$_GetClipResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetClipsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetClipResponseToJson(_$_GetClipResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_GetClipsResponseData _$$_GetClipsResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_GetClipsResponseData(
      id: json['id'] as String?,
      url: json['url'] as String?,
      embedUrl: json['embed_url'] as String?,
      broadcasterId: json['broadcaster_id'] as String?,
      broadcasterName: json['broadcaster_name'] as String?,
      creatorId: json['creator_id'] as String?,
      creatorName: json['creator_name'] as String?,
      videoId: json['video_id'] as String?,
      gameId: json['game_id'] as String?,
      language: json['language'] as String?,
      title: json['title'] as String?,
      viewCount: json['view_count'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      thumbnailUrl: json['thumbnail_url'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      vodOffset: json['vod_offset'] as int?,
    );

Map<String, dynamic> _$$_GetClipsResponseDataToJson(
    _$_GetClipsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('url', instance.url);
  writeNotNull('embed_url', instance.embedUrl);
  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('broadcaster_name', instance.broadcasterName);
  writeNotNull('creator_id', instance.creatorId);
  writeNotNull('creator_name', instance.creatorName);
  writeNotNull('video_id', instance.videoId);
  writeNotNull('game_id', instance.gameId);
  writeNotNull('language', instance.language);
  writeNotNull('title', instance.title);
  writeNotNull('view_count', instance.viewCount);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('thumbnail_url', instance.thumbnailUrl);
  writeNotNull('duration', instance.duration);
  writeNotNull('vod_offset', instance.vodOffset);
  return val;
}
