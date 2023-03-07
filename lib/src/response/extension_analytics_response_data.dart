import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/data_range_response.dart';

part 'extension_analytics_response_data.freezed.dart';

part 'extension_analytics_response_data.g.dart';

@freezed
class ExtensionAnalyticsResponseData with _$ExtensionAnalyticsResponseData {
  const factory ExtensionAnalyticsResponseData(
    String? extensionId,
    String? URL,
    String? type,
    DateRange? dateRange,
  ) = _ExtensionAnalyticsResponseData;

  factory ExtensionAnalyticsResponseData.fromJson(Map<String, dynamic> json) =>
      _$ExtensionAnalyticsResponseDataFromJson(json);
}
