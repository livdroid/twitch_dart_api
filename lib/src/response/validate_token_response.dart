import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_token_response.freezed.dart';
part 'validate_token_response.g.dart';

@freezed
class ValidateTokenResponse with _$ValidateTokenResponse {
  const factory ValidateTokenResponse({
    String? clientId,
    String? login,
    List<String>? scopes,
    String? userId,
    int? expiresIn,
  }) = _ValidateTokenResponse;

  factory ValidateTokenResponse.fromJson(Map<String, dynamic> json) => _$ValidateTokenResponseFromJson(json);
}
