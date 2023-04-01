// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_blocked_terms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetBlockedTermsResponse _$$_GetBlockedTermsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetBlockedTermsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              GetBlockedTermsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetBlockedTermsResponseToJson(
    _$_GetBlockedTermsResponse instance) {
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

_$_GetBlockedTermsResponseData _$$_GetBlockedTermsResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_GetBlockedTermsResponseData(
      broadcasterId: json['broadcaster_id'] as String?,
      moderatorId: json['moderator_id'] as String?,
      id: json['id'] as String?,
      text: json['text'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      expiresAt: json['expires_at'],
    );

Map<String, dynamic> _$$_GetBlockedTermsResponseDataToJson(
    _$_GetBlockedTermsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('moderator_id', instance.moderatorId);
  writeNotNull('id', instance.id);
  writeNotNull('text', instance.text);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('expires_at', instance.expiresAt);
  return val;
}
