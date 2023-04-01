import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'get_blocked_terms_response.freezed.dart';

part 'get_blocked_terms_response.g.dart';

@freezed
class GetBlockedTermsResponse with _$GetBlockedTermsResponse {
  const factory GetBlockedTermsResponse({
    List<GetBlockedTermsResponseData>? data,
    Pagination? pagination,
  }) = _GetBlockedTermsResponse;

  factory GetBlockedTermsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBlockedTermsResponseFromJson(json);
}

@freezed
class GetBlockedTermsResponseData with _$GetBlockedTermsResponseData {
  const factory GetBlockedTermsResponseData({
    String? broadcasterId,
    String? moderatorId,
    String? id,
    String? text,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic? expiresAt,
  }) = _GetBlockedTermsResponseData;

  factory GetBlockedTermsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetBlockedTermsResponseDataFromJson(json);
}