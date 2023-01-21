// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_range_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateRange _$$_DateRangeFromJson(Map<String, dynamic> json) => _$_DateRange(
      json['started_at'] as String?,
      json['ended_at'] as String?,
    );

Map<String, dynamic> _$$_DateRangeToJson(_$_DateRange instance) {
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
