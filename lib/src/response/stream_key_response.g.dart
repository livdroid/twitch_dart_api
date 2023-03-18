// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_key_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamKeyResponse _$$_StreamKeyResponseFromJson(Map<String, dynamic> json) =>
    _$_StreamKeyResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => StreamKeyResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StreamKeyResponseToJson(
    _$_StreamKeyResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_StreamKeyResponseData _$$_StreamKeyResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_StreamKeyResponseData(
      streamKey: json['stream_key'] as String?,
    );

Map<String, dynamic> _$$_StreamKeyResponseDataToJson(
    _$_StreamKeyResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stream_key', instance.streamKey);
  return val;
}
