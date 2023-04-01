// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_clip_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateClipProps _$$_CreateClipPropsFromJson(Map<String, dynamic> json) =>
    _$_CreateClipProps(
      broadcasterId: json['broadcaster_id'] as String,
      hasDelay: json['has_delay'] as bool?,
    );

Map<String, dynamic> _$$_CreateClipPropsToJson(_$_CreateClipProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('has_delay', instance.hasDelay);
  return val;
}
