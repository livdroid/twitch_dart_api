import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/data_range_response.dart';

part 'game_analytics_response_data.freezed.dart';

part 'game_analytics_response_data.g.dart';

@freezed
class GameAnalyticsResponseData with _$GameAnalyticsResponseData {
  const factory GameAnalyticsResponseData(
    String? gameId,
    String? URL,
    String? type,
    DateRange? dateRange,
  ) = _GameAnalyticsResponseData;

  factory GameAnalyticsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GameAnalyticsResponseDataFromJson(json);
}
