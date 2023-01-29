import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'user_follow_response.freezed.dart';
part 'user_follow_response.g.dart';

@freezed
class UserFollowResponse with _$UserFollowResponse {

  const factory UserFollowResponse({
    int? total,
    List<UserFollowData>? data,
    Pagination? pagination,

  }) = _UserFollowResponse;

  factory UserFollowResponse.fromJson(Map<String, dynamic> json) =>
      _$UserFollowResponseFromJson(json);
}

@freezed
class UserFollowData with _$UserFollowData {

  const factory UserFollowData({
    String? fromId,
    String? fromLogin,
    String? fromName,
    String? toId,
    String? toName,
    String? followedAt,
}) = _UserFollowData;

  factory UserFollowData.fromJson(Map<String, dynamic> json) =>
      _$UserFollowDataFromJson(json);
}
