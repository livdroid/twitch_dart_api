import 'package:json_annotation/json_annotation.dart';
import 'package:twitch_client/src/response/data_range_response.dart';
import 'package:twitch_client/src/response/game_analytics_response.dart';

part 'extension_analytics_response.g.dart';

@JsonSerializable()
class ExtensionAnalyticsResponse {
  final List<ExtensionAnalyticsResponseData>? data;
  final PaginationBean? pagination;

  ExtensionAnalyticsResponse({this.data, this.pagination});

  factory ExtensionAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtensionAnalyticsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ExtensionAnalyticsResponseToJson(this);
}

@JsonSerializable()
class PaginationBean {
  final String cursor;

  PaginationBean({required this.cursor});

  factory PaginationBean.fromJson(Map<String, dynamic> json) =>
      _$PaginationBeanFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationBeanToJson(this);
}

@JsonSerializable()
class ExtensionAnalyticsResponseData {
  @JsonKey(name: 'extension_id')
  final String? extensionId;
  final String? URL;
  final String? type;
  @JsonKey(name: 'date_range')
  final DateRange? dateRange;

  ExtensionAnalyticsResponseData({this.extensionId, this.URL, this.type, this.dateRange});

  factory ExtensionAnalyticsResponseData.fromJson(Map<String, dynamic> json) =>
      _$ExtensionAnalyticsResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$ExtensionAnalyticsResponseDataToJson(this);
}
