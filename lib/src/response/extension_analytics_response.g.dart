// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtensionAnalyticsResponse _$ExtensionAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    ExtensionAnalyticsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ExtensionAnalyticsResponseData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationBean.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExtensionAnalyticsResponseToJson(
    ExtensionAnalyticsResponse instance) {
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

PaginationBean _$PaginationBeanFromJson(Map<String, dynamic> json) =>
    PaginationBean(
      cursor: json['cursor'] as String,
    );

Map<String, dynamic> _$PaginationBeanToJson(PaginationBean instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
    };

ExtensionAnalyticsResponseData _$ExtensionAnalyticsResponseDataFromJson(
        Map<String, dynamic> json) =>
    ExtensionAnalyticsResponseData(
      extensionId: json['extension_id'] as String?,
      URL: json['u_r_l'] as String?,
      type: json['type'] as String?,
      dateRange: json['date_range'] == null
          ? null
          : DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExtensionAnalyticsResponseDataToJson(
    ExtensionAnalyticsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('extension_id', instance.extensionId);
  writeNotNull('u_r_l', instance.URL);
  writeNotNull('type', instance.type);
  writeNotNull('date_range', instance.dateRange?.toJson());
  return val;
}
