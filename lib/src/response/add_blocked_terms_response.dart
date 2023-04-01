import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_blocked_terms_response.freezed.dart';
part 'add_blocked_terms_response.g.dart';


@freezed
class AddBlockedTermsResponse with _$AddBlockedTermsResponse {
  const factory AddBlockedTermsResponse({
    List<AddBlockedTermsResponseData>? data,
  }) = _AddBlockedTermsResponse;

  factory AddBlockedTermsResponse.fromJson(Map<String, dynamic> json) => _$AddBlockedTermsResponseFromJson(json);
}

@freezed
class AddBlockedTermsResponseData with _$AddBlockedTermsResponseData {
  const factory AddBlockedTermsResponseData({
    String? broadcasterId,
    String? moderatorId,
    String? id,
    String? text,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic? expiresAt,
  }) = _AddBlockedTermsResponseData;

  factory AddBlockedTermsResponseData.fromJson(Map<String, dynamic> json) => _$AddBlockedTermsResponseDataFromJson(json);
}
