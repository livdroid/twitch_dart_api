// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_clip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateClipResponse _$$_CreateClipResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateClipResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => CreateClipResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreateClipResponseToJson(
    _$_CreateClipResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_CreateClipResponseData _$$_CreateClipResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_CreateClipResponseData(
      id: json['id'] as String?,
      editUrl: json['edit_url'] as String?,
    );

Map<String, dynamic> _$$_CreateClipResponseDataToJson(
    _$_CreateClipResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('edit_url', instance.editUrl);
  return val;
}
