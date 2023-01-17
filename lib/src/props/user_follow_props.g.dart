// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_follow_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserFollowProps _$$_UserFollowPropsFromJson(Map<String, dynamic> json) =>
    _$_UserFollowProps(
      fromId: json['from_id'] as String?,
      toId: json['to_id'] as String?,
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$$_UserFollowPropsToJson(_$_UserFollowProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from_id', instance.fromId);
  writeNotNull('to_id', instance.toId);
  writeNotNull('first', instance.first);
  writeNotNull('after', instance.after);
  return val;
}
