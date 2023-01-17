import 'package:twitch_client/src/response/channel_info_data_response.dart';

class ChannelInformationsResponse {
  late final List<ChannelInfoData> data;

  ChannelInformationsResponse({
    required this.data,
  });

  factory ChannelInformationsResponse.fromJson(dynamic json) =>
      ChannelInformationsResponse(
          data: List<ChannelInfoData>.from(
              json['data']?.map((v) => (ChannelInfoData.fromJson(v))) ?? []));
}
