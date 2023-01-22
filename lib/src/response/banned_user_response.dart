import 'package:freezed_annotation/freezed_annotation.dart';

part 'banned_user_response.freezed.dart';

part 'banned_user_response.g.dart';

@freezed
class BannedUser with _$BannedUser {
  const factory BannedUser(
      {String? userId,
      String? userLogin,
      String? userName,
      String? expiresAt,
      String? createdAt,
      String? reason,
      String? moderatorId,
      String? moderatorLogin,
      String? moderatorName}) = _BannedUser;

  factory BannedUser.fromJson(Map<String, dynamic> json) =>
      _$BannedUserFromJson(json);
}
