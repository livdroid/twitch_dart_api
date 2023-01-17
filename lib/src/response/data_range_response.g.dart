// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_range_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateRange _$DateRangeFromJson(Map<String, dynamic> json) => DateRange(
      startedAt: json['started_at'] as String?,
      endedAt: json['ended_at'] as String?,
    );

Map<String, dynamic> _$DateRangeToJson(DateRange instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('started_at', instance.startedAt);
  writeNotNull('ended_at', instance.endedAt);
  return val;
}
