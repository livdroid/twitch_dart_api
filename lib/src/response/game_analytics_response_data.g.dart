// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_analytics_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameAnalyticsResponseData _$$_GameAnalyticsResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_GameAnalyticsResponseData(
      json['game_id'] as String?,
      json['u_r_l'] as String?,
      json['type'] as String?,
      json['date_range'] == null
          ? null
          : DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GameAnalyticsResponseDataToJson(
    _$_GameAnalyticsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('game_id', instance.gameId);
  writeNotNull('u_r_l', instance.URL);
  writeNotNull('type', instance.type);
  writeNotNull('date_range', instance.dateRange?.toJson());
  return val;
}
