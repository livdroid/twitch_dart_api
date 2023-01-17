import 'package:twitch_client/src/response/banned_user_response.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

class BannedUsersResponse {
  final List<BannedUser>? data;
  final Pagination? pagination;

  BannedUsersResponse({this.data, this.pagination});

  factory BannedUsersResponse.fromJson(Map<String, dynamic> json) =>
      BannedUsersResponse(
          data: List<BannedUser>.from(
              json['data'].map((v) => BannedUser.fromJson(v))),
          pagination: Pagination.fromJson(json['pagination']));
}
