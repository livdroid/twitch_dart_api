// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banned_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannedUser _$$_BannedUserFromJson(Map<String, dynamic> json) =>
    _$_BannedUser(
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      userName: json['user_name'] as String?,
      expiresAt: json['expires_at'] as String?,
      createdAt: json['created_at'] as String?,
      reason: json['reason'] as String?,
      moderatorId: json['moderator_id'] as String?,
      moderatorLogin: json['moderator_login'] as String?,
      moderatorName: json['moderator_name'] as String?,
    );

Map<String, dynamic> _$$_BannedUserToJson(_$_BannedUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_name', instance.userName);
  writeNotNull('expires_at', instance.expiresAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('reason', instance.reason);
  writeNotNull('moderator_id', instance.moderatorId);
  writeNotNull('moderator_login', instance.moderatorLogin);
  writeNotNull('moderator_name', instance.moderatorName);
  return val;
}
