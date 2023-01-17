import 'package:twitch_client/src/response/pagination_response.dart';

class UserFollowResponse {
  final int total;
  final List<UserFollowData> data;
  final Pagination pagination;

  UserFollowResponse({
    required this.total,
    required this.data,
    required this.pagination,
  });

  factory UserFollowResponse.fromJson(dynamic json) => UserFollowResponse(
      total: json['total'],
      data: List<UserFollowData>.from(
          json['data'].map((e) => UserFollowData.fromJson(e))),
      pagination: Pagination.fromJson(json['pagination']));
}

class UserFollowData {
  final String? fromId;
  final String? fromLogin;
  final String? fromName;
  final String? toId;
  final String? toName;
  final String? followedAt;

  UserFollowData(
      {required this.fromId,
      required this.fromLogin,
      required this.fromName,
      required this.toId,
      required this.toName,
      required this.followedAt});

  factory UserFollowData.fromJson(Map<String, dynamic> json) => UserFollowData(
        fromId: json['from_id'],
        fromLogin: json['from_login'],
        fromName: json['from_name'],
        toId: json['to_id'],
        toName: json['to_name'],
        followedAt: json['followed_at'],
      );
}
