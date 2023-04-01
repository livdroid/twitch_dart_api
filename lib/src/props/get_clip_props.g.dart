// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_clip_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetClipsProps _$$_GetClipsPropsFromJson(Map<String, dynamic> json) =>
    _$_GetClipsProps(
      broadcasterId: json['broadcaster_id'] as String?,
      gameId: json['game_id'] as String?,
      id: json['id'] as String?,
      startedAt: json['started_at'] as String?,
      endedAt: json['ended_at'] as String?,
      first: json['first'] as int?,
      before: json['before'] as String?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$$_GetClipsPropsToJson(_$_GetClipsProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('game_id', instance.gameId);
  writeNotNull('id', instance.id);
  writeNotNull('started_at', instance.startedAt);
  writeNotNull('ended_at', instance.endedAt);
  writeNotNull('first', instance.first);
  writeNotNull('before', instance.before);
  writeNotNull('after', instance.after);
  return val;
}
