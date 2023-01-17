// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension_analytics_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtensionAnalyticsProps _$ExtensionAnalyticsPropsFromJson(
        Map<String, dynamic> json) =>
    ExtensionAnalyticsProps(
      extensionId: json['extension_id'] as String?,
      type: json['type'] as String?,
      startedAt: json['started_at'] as String?,
      endedAt: json['ended_at'] as String?,
      first: json['first'] as String?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$ExtensionAnalyticsPropsToJson(
    ExtensionAnalyticsProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('extension_id', instance.extensionId);
  writeNotNull('type', instance.type);
  writeNotNull('started_at', instance.startedAt);
  writeNotNull('ended_at', instance.endedAt);
  writeNotNull('first', instance.first);
  writeNotNull('after', instance.after);
  return val;
}
