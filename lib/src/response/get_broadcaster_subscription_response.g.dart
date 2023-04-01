// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_broadcaster_subscription_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetBroadcasterSubscriptionResponse
    _$$_GetBroadcasterSubscriptionResponseFromJson(Map<String, dynamic> json) =>
        _$_GetBroadcasterSubscriptionResponse(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => GetBroadcasterSubscriptionResponseData.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          pagination: json['pagination'] == null
              ? null
              : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
          total: json['total'] as int?,
          points: json['points'] as int?,
        );

Map<String, dynamic> _$$_GetBroadcasterSubscriptionResponseToJson(
    _$_GetBroadcasterSubscriptionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  writeNotNull('total', instance.total);
  writeNotNull('points', instance.points);
  return val;
}

_$_GetBroadcasterSubscriptionResponseData
    _$$_GetBroadcasterSubscriptionResponseDataFromJson(
            Map<String, dynamic> json) =>
        _$_GetBroadcasterSubscriptionResponseData(
          broadcasterId: json['broadcaster_id'] as String?,
          broadcasterLogin: json['broadcaster_login'] as String?,
          broadcasterName: json['broadcaster_name'] as String?,
          gifterId: json['gifter_id'] as String?,
          gifterLogin: json['gifter_login'] as String?,
          gifterName: json['gifter_name'] as String?,
          isGift: json['is_gift'] as bool?,
          tier: json['tier'] as String?,
          planName: json['plan_name'] as String?,
          userId: json['user_id'] as String?,
          userName: json['user_name'] as String?,
          userLogin: json['user_login'] as String?,
        );

Map<String, dynamic> _$$_GetBroadcasterSubscriptionResponseDataToJson(
    _$_GetBroadcasterSubscriptionResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('broadcaster_login', instance.broadcasterLogin);
  writeNotNull('broadcaster_name', instance.broadcasterName);
  writeNotNull('gifter_id', instance.gifterId);
  writeNotNull('gifter_login', instance.gifterLogin);
  writeNotNull('gifter_name', instance.gifterName);
  writeNotNull('is_gift', instance.isGift);
  writeNotNull('tier', instance.tier);
  writeNotNull('plan_name', instance.planName);
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_login', instance.userLogin);
  return val;
}
