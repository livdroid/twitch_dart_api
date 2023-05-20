// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_analytics_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameAnalyticsProps _$GameAnalyticsPropsFromJson(Map<String, dynamic> json) =>
    GameAnalyticsProps(
      gameId: json['game_id'] as String?,
      type: json['type'] as String?,
      startedAd: json['started_at'] as String?,
      endedAt: json['ended_at'] as String?,
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$GameAnalyticsPropsToJson(GameAnalyticsProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('game_id', instance.gameId);
  writeNotNull('type', instance.type);
  writeNotNull('started_at', instance.startedAd);
  writeNotNull('ended_at', instance.endedAt);
  writeNotNull('first', instance.first);
  writeNotNull('after', instance.after);
  return val;
}
