import 'package:twitch_client/src/response/chatters_data_response.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

class ChattersResponse {
  final List<ChattersData>? data;
  final Pagination? pagination;
  final int? total;

  ChattersResponse({this.data, this.pagination, this.total});

  factory ChattersResponse.fromJson(Map<String, dynamic> json) =>
      ChattersResponse(
          data: List<ChattersData>.from(
              json['data']?.map((v) => (ChattersData.fromJson(v))) ?? []),
          pagination: Pagination.fromJson(json['pagination']),
          total: json['total']);
}
