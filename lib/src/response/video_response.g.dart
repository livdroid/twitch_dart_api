// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoResponse _$$_VideoResponseFromJson(Map<String, dynamic> json) =>
    _$_VideoResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => VideoResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VideoResponseToJson(_$_VideoResponse instance) {
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

_$_VideoResponseData _$$_VideoResponseDataFromJson(Map<String, dynamic> json) =>
    _$_VideoResponseData(
      id: json['id'] as String?,
      streamId: json['stream_id'] as String?,
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      userName: json['user_name'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String?,
      publishedAt: json['published_at'] as String?,
      url: json['url'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      viewable: json['viewable'] as String?,
      viewCount: json['view_count'] as int?,
      language: json['language'] as String?,
      type: json['type'] as String?,
      duration: json['duration'] as String?,
      mutedSegments: (json['muted_segments'] as List<dynamic>?)
          ?.map((e) => MutedSegments.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VideoResponseDataToJson(
    _$_VideoResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('stream_id', instance.streamId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_name', instance.userName);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('url', instance.url);
  writeNotNull('thumbnail_url', instance.thumbnailUrl);
  writeNotNull('viewable', instance.viewable);
  writeNotNull('view_count', instance.viewCount);
  writeNotNull('language', instance.language);
  writeNotNull('type', instance.type);
  writeNotNull('duration', instance.duration);
  writeNotNull('muted_segments',
      instance.mutedSegments?.map((e) => e.toJson()).toList());
  return val;
}

_$_MutedSegments _$$_MutedSegmentsFromJson(Map<String, dynamic> json) =>
    _$_MutedSegments(
      duration: json['duration'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$$_MutedSegmentsToJson(_$_MutedSegments instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('duration', instance.duration);
  writeNotNull('offset', instance.offset);
  return val;
}
