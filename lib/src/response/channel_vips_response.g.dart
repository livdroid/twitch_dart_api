// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_vips_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelVipResponse _$$_ChannelVipResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelVipResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ChannelVipsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChannelVipResponseToJson(
    _$_ChannelVipResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}

_$_ChannelVipsResponseData _$$_ChannelVipsResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelVipsResponseData(
      userId: json['user_id'] as String?,
      userName: json['user_name'] as String?,
      userLogin: json['user_login'] as String?,
    );

Map<String, dynamic> _$$_ChannelVipsResponseDataToJson(
    _$_ChannelVipsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_login', instance.userLogin);
  return val;
}
