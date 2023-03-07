import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_block_list_response.freezed.dart';
part 'user_block_list_response.g.dart';

@freezed
class UserBlockListResponse with _$UserBlockListResponse {
  const factory UserBlockListResponse({List<UserBlockListResponseData>? data}) =
      _UserBlockListResponse;

  factory UserBlockListResponse.fromJson(Map<String, dynamic> json) =>
      _$UserBlockListResponseFromJson(json);
}

@freezed
class UserBlockListResponseData with _$UserBlockListResponseData {
  const factory UserBlockListResponseData({
    String? userId,
    String? userLogin,
    String? displayName,
  }) = _UserBlockListResponseData;

  factory UserBlockListResponseData.fromJson(Map<String, dynamic> json) =>
      _$UserBlockListResponseDataFromJson(json);
}
