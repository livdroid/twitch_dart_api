// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExtensionAnalyticsResponse _$$_ExtensionAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ExtensionAnalyticsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ExtensionAnalyticsResponseData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExtensionAnalyticsResponseToJson(
    _$_ExtensionAnalyticsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}
