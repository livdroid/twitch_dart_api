import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/game_analytics_response_data.dart';

part 'game_analytics_response.freezed.dart';

part 'game_analytics_response.g.dart';

@freezed
class GameAnalyticsResponse with _$GameAnalyticsResponse {
  const factory GameAnalyticsResponse({List<GameAnalyticsResponseData>? data}) =
      _GameAnalyticsResponse;

  factory GameAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$GameAnalyticsResponseFromJson(json);
}
