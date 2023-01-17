import 'package:twitch_client/src/response/channel_editor_response.dart';

class ChannelEditorsResponse {
  final List<ChannelEditor>? data;

  ChannelEditorsResponse({this.data});

  factory ChannelEditorsResponse.fromJson(Map<String, dynamic> json) =>
      ChannelEditorsResponse(
          data: List<ChannelEditor>.from(
              json['data']?.map((e) => ChannelEditor.fromJson(e)) ?? []));
}
