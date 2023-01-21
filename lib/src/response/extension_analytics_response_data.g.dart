// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension_analytics_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExtensionAnalyticsResponseData _$$_ExtensionAnalyticsResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_ExtensionAnalyticsResponseData(
      json['extension_id'] as String?,
      json['u_r_l'] as String?,
      json['type'] as String?,
      json['date_range'] == null
          ? null
          : DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExtensionAnalyticsResponseDataToJson(
    _$_ExtensionAnalyticsResponseData instance) {
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
