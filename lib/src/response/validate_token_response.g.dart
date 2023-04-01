// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ValidateTokenResponse _$$_ValidateTokenResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ValidateTokenResponse(
      clientId: json['client_id'] as String?,
      login: json['login'] as String?,
      scopes:
          (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userId: json['user_id'] as String?,
      expiresIn: json['expires_in'] as int?,
    );

Map<String, dynamic> _$$_ValidateTokenResponseToJson(
    _$_ValidateTokenResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('client_id', instance.clientId);
  writeNotNull('login', instance.login);
  writeNotNull('scopes', instance.scopes);
  writeNotNull('user_id', instance.userId);
  writeNotNull('expires_in', instance.expiresIn);
  return val;
}
