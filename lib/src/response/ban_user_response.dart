import 'package:freezed_annotation/freezed_annotation.dart';

part 'ban_user_response.freezed.dart';

part 'ban_user_response.g.dart';

@freezed
class BanUserResponse with _$BanUserResponse {
  const factory BanUserResponse({List<BanUserResponseData>? data}) =
      _BanUserResponse;

  factory BanUserResponse.fromJson(Map<String, dynamic> json) =>
      _$BanUserResponseFromJson(json);
}

@freezed
class BanUserResponseData with _$BanUserResponseData {
  const factory BanUserResponseData({
    String? broadcasterId,
    String? moderatorId,
    String? userId,
    String? createdAt,
    String? endTime,
  }) = _BanUserResponseData;

  factory BanUserResponseData.fromJson(Map<String, dynamic> json) =>
      _$BanUserResponseDataFromJson(json);
}
