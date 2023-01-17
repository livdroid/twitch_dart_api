import 'package:json_annotation/json_annotation.dart';
import 'package:twitch_client/src/response/data_range_response.dart';

part 'game_analytics_response.g.dart';

@JsonSerializable()
class GameAnalyticsResponse {
  final List<GameAnalyticsResponseData>? data;

  GameAnalyticsResponse({this.data});

  factory GameAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$GameAnalyticsResponseFromJson(json);
}

@JsonSerializable()
class GameAnalyticsResponseData {
  @JsonKey(name: 'game_id')
  final String? gameId;
  final String? URL;
  final String? type;
  @JsonKey(name: 'date_range')
  final DateRange? dateRange;

  GameAnalyticsResponseData({this.gameId, this.URL, this.type, this.dateRange});

  factory GameAnalyticsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GameAnalyticsResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$GameAnalyticsResponseDataToJson(this);

}