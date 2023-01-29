// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_information_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_UserResponseData _$$_UserResponseDataFromJson(Map<String, dynamic> json) =>
    _$_UserResponseData(
      id: json['id'] as String?,
      login: json['login'] as String?,
      displayName: json['display_name'] as String?,
      type: json['type'] as String?,
      broadcasterType: json['broadcaster_type'] as String?,
      description: json['description'] as String?,
      profileImageUrl: json['profile_image_url'] as String?,
      offlineImageUrl: json['offline_image_url'] as String?,
      viewCount: json['view_count'] as int?,
      email: json['email'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_UserResponseDataToJson(_$_UserResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('login', instance.login);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('type', instance.type);
  writeNotNull('broadcaster_type', instance.broadcasterType);
  writeNotNull('description', instance.description);
  writeNotNull('profile_image_url', instance.profileImageUrl);
  writeNotNull('offline_image_url', instance.offlineImageUrl);
  writeNotNull('view_count', instance.viewCount);
  writeNotNull('email', instance.email);
  writeNotNull('created_at', instance.createdAt);
  return val;
}
