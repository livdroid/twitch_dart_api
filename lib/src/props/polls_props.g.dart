// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polls_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollsProps _$PollsPropsFromJson(Map<String, dynamic> json) => PollsProps(
      broadcasterId: json['broadcaster_id'] as String,
      id: json['id'] as String?,
      first: json['first'] as String?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$PollsPropsToJson(PollsProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('first', instance.first);
  writeNotNull('after', instance.after);
  return val;
}
