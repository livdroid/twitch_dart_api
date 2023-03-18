// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_followed_streams_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetFollowedStreamsProps _$$_GetFollowedStreamsPropsFromJson(
        Map<String, dynamic> json) =>
    _$_GetFollowedStreamsProps(
      userId: json['user_id'] as String,
      first: json['first'] as int?,
      after: json['after'] as int?,
    );

Map<String, dynamic> _$$_GetFollowedStreamsPropsToJson(
    _$_GetFollowedStreamsProps instance) {
  final val = <String, dynamic>{
    'user_id': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first', instance.first);
  writeNotNull('after', instance.after);
  return val;
}
