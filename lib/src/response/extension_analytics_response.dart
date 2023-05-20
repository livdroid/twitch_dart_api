import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/extension_analytics_response_data.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'extension_analytics_response.freezed.dart';

part 'extension_analytics_response.g.dart';

@freezed
class ExtensionAnalyticsResponse with _$ExtensionAnalyticsResponse {
  const factory ExtensionAnalyticsResponse({
    List<ExtensionAnalyticsResponseData>? data,
    Pagination? pagination,
  }) = _ExtensionAnalyticsResponse;

  factory ExtensionAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtensionAnalyticsResponseFromJson(json);
}
