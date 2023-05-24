// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_games_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameProps _$$_GamePropsFromJson(Map<String, dynamic> json) => _$_GameProps(
      id: json['id'] as String?,
      name: json['name'] as String?,
      igdbId: json['igdb_id'] as String?,
    );

Map<String, dynamic> _$$_GamePropsToJson(_$_GameProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('igdb_id', instance.igdbId);
  return val;
}
