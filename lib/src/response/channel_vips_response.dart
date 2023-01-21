import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'channel_vips_response.freezed.dart';

part 'channel_vips_response.g.dart';

@freezed
class ChannelVipsResponse with _$ChannelVipsResponse {

  const factory ChannelVipsResponse(
      {final List<ChannelVipsResponseData>? data, final Pagination? pagination})
      = _ChannelVipResponse;

  factory ChannelVipsResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelVipsResponseFromJson(json);
}

@freezed
class ChannelVipsResponseData with _$ChannelVipsResponseData {
  const factory ChannelVipsResponseData(
      { final String? userId, final String? userName, final String? userLogin})
      = _ChannelVipsResponseData;

  factory ChannelVipsResponseData.fromJson(Map<String, dynamic> json) =>
      _$ChannelVipsResponseDataFromJson(json);
}
