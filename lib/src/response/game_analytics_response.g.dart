// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_analytics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameAnalyticsResponse _$$_GameAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GameAnalyticsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              GameAnalyticsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GameAnalyticsResponseToJson(
    _$_GameAnalyticsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}
