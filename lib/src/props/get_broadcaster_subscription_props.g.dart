// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_broadcaster_subscription_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetBroadcasterSubscriptionProps _$$_GetBroadcasterSubscriptionPropsFromJson(
        Map<String, dynamic> json) =>
    _$_GetBroadcasterSubscriptionProps(
      broadcasterId: json['broadcaster_id'] as String,
      userId: json['user_id'] as String?,
      first: json['first'] as String?,
      after: json['after'] as String?,
      before: json['before'] as String?,
    );

Map<String, dynamic> _$$_GetBroadcasterSubscriptionPropsToJson(
    _$_GetBroadcasterSubscriptionProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('first', instance.first);
  writeNotNull('after', instance.after);
  writeNotNull('before', instance.before);
  return val;
}
