// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_custom_reward_redemption_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateCustomRewardRedemptionResponse
    _$$_UpdateCustomRewardRedemptionResponseFromJson(
            Map<String, dynamic> json) =>
        _$_UpdateCustomRewardRedemptionResponse(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => UpdateCustomRewardRedemption.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_UpdateCustomRewardRedemptionResponseToJson(
    _$_UpdateCustomRewardRedemptionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_UpdateCustomRewardRedemption _$$_UpdateCustomRewardRedemptionFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateCustomRewardRedemption(
      broadcasterName: json['broadcaster_name'] as String?,
      broadcasterLogin: json['broadcaster_login'] as String?,
      broadcasterId: json['broadcaster_id'] as String?,
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      userName: json['user_name'] as String?,
      userLogin: json['user_login'] as String?,
      userInput: json['user_input'] as String?,
      status: json['status'] as String?,
      redeemedAt: json['redeemed_at'] == null
          ? null
          : DateTime.parse(json['redeemed_at'] as String),
      reward: json['reward'] == null
          ? null
          : Reward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateCustomRewardRedemptionToJson(
    _$_UpdateCustomRewardRedemption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_name', instance.broadcasterName);
  writeNotNull('broadcaster_login', instance.broadcasterLogin);
  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_input', instance.userInput);
  writeNotNull('status', instance.status);
  writeNotNull('redeemed_at', instance.redeemedAt?.toIso8601String());
  writeNotNull('reward', instance.reward?.toJson());
  return val;
}
