// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatters_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChattersResponse _$$_ChattersResponseFromJson(Map<String, dynamic> json) =>
    _$_ChattersResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ChattersData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_ChattersResponseToJson(_$_ChattersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  writeNotNull('total', instance.total);
  return val;
}
