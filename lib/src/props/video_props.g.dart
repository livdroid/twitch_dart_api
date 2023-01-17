// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoProps _$$_VideoPropsFromJson(Map<String, dynamic> json) =>
    _$_VideoProps(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      gameId: json['game_id'] as String?,
      language: json['language'] as String?,
      period: json['period'] as String?,
      sort: json['sort'] as String?,
      type: json['type'] as String?,
      first: json['first'] as String?,
      after: json['after'] as String?,
      before: json['before'] as String?,
    );

Map<String, dynamic> _$$_VideoPropsToJson(_$_VideoProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('game_id', instance.gameId);
  writeNotNull('language', instance.language);
  writeNotNull('period', instance.period);
  writeNotNull('sort', instance.sort);
  writeNotNull('type', instance.type);
  writeNotNull('first', instance.first);
  writeNotNull('after', instance.after);
  writeNotNull('before', instance.before);
  return val;
}
