// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameAnalyticsResponse _$GameAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    GameAnalyticsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              GameAnalyticsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameAnalyticsResponseToJson(
    GameAnalyticsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

GameAnalyticsResponseData _$GameAnalyticsResponseDataFromJson(
        Map<String, dynamic> json) =>
    GameAnalyticsResponseData(
      gameId: json['game_id'] as String?,
      URL: json['u_r_l'] as String?,
      type: json['type'] as String?,
      dateRange: json['date_range'] == null
          ? null
          : DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameAnalyticsResponseDataToJson(
    GameAnalyticsResponseData instance) {
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
