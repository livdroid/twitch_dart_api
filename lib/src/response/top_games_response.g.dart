// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_games_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopGamesResponse _$$_TopGamesResponseFromJson(Map<String, dynamic> json) =>
    _$_TopGamesResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : TopGame.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TopGamesResponseToJson(_$_TopGamesResponse instance) {
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

_$_TopGame _$$_TopGameFromJson(Map<String, dynamic> json) => _$_TopGame(
      id: json['id'] as String?,
      name: json['name'] as String?,
      boxArtUrl: json['box_art_url'] as String?,
      igdbId: json['igdb_id'] as String?,
    );

Map<String, dynamic> _$$_TopGameToJson(_$_TopGame instance) {
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
