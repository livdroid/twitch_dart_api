// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatters_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChattersProps _$$_ChattersPropsFromJson(Map<String, dynamic> json) =>
    _$_ChattersProps(
      broadcasterId: json['broadcaster_id'] as String,
      moderatorId: json['moderator_id'] as String,
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$$_ChattersPropsToJson(_$_ChattersProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
    'moderator_id': instance.moderatorId,
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
