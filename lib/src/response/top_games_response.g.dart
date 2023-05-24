// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_games_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GamesResponse _$$_GamesResponseFromJson(Map<String, dynamic> json) =>
    _$_GamesResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GamesResponseToJson(_$_GamesResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e?.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}

_$_Game _$$_GameFromJson(Map<String, dynamic> json) => _$_Game(
      id: json['id'] as String?,
      name: json['name'] as String?,
      boxArtUrl: json['box_art_url'] as String?,
      igdbId: json['igdb_id'] as String?,
    );

Map<String, dynamic> _$$_GameToJson(_$_Game instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('box_art_url', instance.boxArtUrl);
  writeNotNull('igdb_id', instance.igdbId);
  return val;
}
