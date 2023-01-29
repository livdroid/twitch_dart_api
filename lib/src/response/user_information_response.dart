import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_information_response.g.dart';

part 'user_information_response.freezed.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({ List<UserResponseData>? data}) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class UserResponseData with _$UserResponseData {

  const factory UserResponseData({
    String? id,
    String? login,
    String? displayName,
    String? type,
    String? broadcasterType,
    String? description,
    String? profileImageUrl,
    String? offlineImageUrl,
    int? viewCount,
    String? email,
    String? createdAt,
}) = _UserResponseData;

  factory UserResponseData.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDataFromJson(json);
}
