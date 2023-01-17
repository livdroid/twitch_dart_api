import 'package:twitch_client/src/response/pagination_response.dart';

class ChannelVipsResponse {
  final List<ChannelVipsResponseData>? data;
  final Pagination? pagination;

  ChannelVipsResponse({required this.data, required this.pagination});

  factory ChannelVipsResponse.fromJson(Map<String, dynamic> json) =>
      ChannelVipsResponse(
          data: List<ChannelVipsResponseData>.from(
              json['data']?.map((e) => ChannelVipsResponseData.fromJson(e))),
          pagination: Pagination.fromJson(json['pagination']));
}

class ChannelVipsResponseData {
  final String? userId;
  final String? userName;
  final String? userLogin;

  ChannelVipsResponseData(
      {required this.userId, required this.userName, required this.userLogin});

  factory ChannelVipsResponseData.fromJson(Map<String, dynamic> json) =>
      ChannelVipsResponseData(
        userId: json['user_id'],
        userName: json['user_name'],
        userLogin: json['user_login'],
      );
}
