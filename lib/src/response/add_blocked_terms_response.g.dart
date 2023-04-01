// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_blocked_terms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddBlockedTermsResponse _$$_AddBlockedTermsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AddBlockedTermsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              AddBlockedTermsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddBlockedTermsResponseToJson(
    _$_AddBlockedTermsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_AddBlockedTermsResponseData _$$_AddBlockedTermsResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_AddBlockedTermsResponseData(
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

Map<String, dynamic> _$$_AddBlockedTermsResponseDataToJson(
    _$_AddBlockedTermsResponseData instance) {
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
