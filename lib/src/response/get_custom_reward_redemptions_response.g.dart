// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_custom_reward_redemptions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCustomRewardRedemptionResponse
    _$$_GetCustomRewardRedemptionResponseFromJson(Map<String, dynamic> json) =>
        _$_GetCustomRewardRedemptionResponse(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => GetCustomRewardRedemptionResponseData.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          pagination: json['pagination'] == null
              ? null
              : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_GetCustomRewardRedemptionResponseToJson(
    _$_GetCustomRewardRedemptionResponse instance) {
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

_$_GetCustomRewardRedemptionResponseData
    _$$_GetCustomRewardRedemptionResponseDataFromJson(
            Map<String, dynamic> json) =>
        _$_GetCustomRewardRedemptionResponseData(
          broadcasterName: json['broadcaster_name'] as String?,
          broadcasterLogin: json['broadcaster_login'] as String?,
          broadcasterId: json['broadcaster_id'] as String?,
          id: json['id'] as String?,
          userLogin: json['user_login'] as String?,
          userId: json['user_id'] as String?,
          userName: json['user_name'] as String?,
          userInput: json['user_input'] as String?,
          status: json['status'] as String?,
          redeemedAt: json['redeemed_at'] == null
              ? null
              : DateTime.parse(json['redeemed_at'] as String),
          reward: json['reward'] == null
              ? null
              : Reward.fromJson(json['reward'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_GetCustomRewardRedemptionResponseDataToJson(
    _$_GetCustomRewardRedemptionResponseData instance) {
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
  writeNotNull('user_login', instance.userLogin);
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_input', instance.userInput);
  writeNotNull('status', instance.status);
  writeNotNull('redeemed_at', instance.redeemedAt?.toIso8601String());
  writeNotNull('reward', instance.reward?.toJson());
  return val;
}

_$_Reward _$$_RewardFromJson(Map<String, dynamic> json) => _$_Reward(
      id: json['id'] as String?,
      title: json['title'] as String?,
      prompt: json['prompt'] as String?,
      cost: json['cost'] as int?,
    );

Map<String, dynamic> _$$_RewardToJson(_$_Reward instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('prompt', instance.prompt);
  writeNotNull('cost', instance.cost);
  return val;
}
