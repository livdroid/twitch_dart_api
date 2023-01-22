import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/banned_user_response.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'banned_users_response.freezed.dart';

part 'banned_users_response.g.dart';

@freezed
class BannedUsersResponse with _$BannedUsersResponse {
  const factory BannedUsersResponse(
      {List<BannedUser>? data, Pagination? pagination}) = _BannedUsersResponse;

  factory BannedUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$BannedUsersResponseFromJson(json);
}
