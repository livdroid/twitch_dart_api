// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_block_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserBlockListResponse _$$_UserBlockListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserBlockListResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              UserBlockListResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserBlockListResponseToJson(
    _$_UserBlockListResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_UserBlockListResponseData _$$_UserBlockListResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_UserBlockListResponseData(
      userId: json['user_id'] as String?,
      userLogin: json['user_login'] as String?,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$$_UserBlockListResponseDataToJson(
    _$_UserBlockListResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('display_name', instance.displayName);
  return val;
}
