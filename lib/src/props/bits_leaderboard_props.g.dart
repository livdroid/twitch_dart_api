// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bits_leaderboard_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BitsLeaderBoardProps _$$_BitsLeaderBoardPropsFromJson(
        Map<String, dynamic> json) =>
    _$_BitsLeaderBoardProps(
      count: json['count'] as int?,
      period: json['period'] as String?,
      startedAt: json['started_at'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$_BitsLeaderBoardPropsToJson(
    _$_BitsLeaderBoardProps instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('period', instance.period);
  writeNotNull('started_at', instance.startedAt);
  writeNotNull('user_id', instance.userId);
  return val;
}
