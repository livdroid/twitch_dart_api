// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_block_list_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserBlockListProps _$$_UserBlockListPropsFromJson(
        Map<String, dynamic> json) =>
    _$_UserBlockListProps(
      broadcasterId: json['broadcaster_id'] as String,
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$$_UserBlockListPropsToJson(
    _$_UserBlockListProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
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
