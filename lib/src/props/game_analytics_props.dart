import 'package:json_annotation/json_annotation.dart';

part 'game_analytics_props.g.dart';

@JsonSerializable(includeIfNull: false)
class GameAnalyticsProps {
  @JsonKey(name: 'game_id')
  final String? gameId;
  final String? type;
  @JsonKey(name: 'started_at')
  final String? startedAd;
  @JsonKey(name: 'ended_at')
  final String? endedAt;
  final int? first;
  final String? after;

  GameAnalyticsProps({
    this.gameId,
    this.type,
    this.startedAd,
    this.endedAt,
    this.first,
    this.after,
  });

  Map<String, dynamic> toJson() => _$GameAnalyticsPropsToJson(this);
}
