// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_streams_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetStreamsProps _$$_GetStreamsPropsFromJson(Map<String, dynamic> json) =>
    _$_GetStreamsProps(
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      gameId: json['game_id'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      first: json['first'] as int?,
      before: json['before'] as int?,
      after: json['after'] as int?,
    );

Map<String, dynamic> _$$_GetStreamsPropsToJson(_$_GetStreamsProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('game_id', instance.gameId);
  writeNotNull('type', instance.type);
  writeNotNull('language', instance.language);
  writeNotNull('first', instance.first);
  writeNotNull('before', instance.before);
  writeNotNull('after', instance.after);
  return val;
}
