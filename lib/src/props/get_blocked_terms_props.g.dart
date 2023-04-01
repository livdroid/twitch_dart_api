// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_blocked_terms_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetBlockedTermsProps _$$_GetBlockedTermsPropsFromJson(
        Map<String, dynamic> json) =>
    _$_GetBlockedTermsProps(
      broadcasterId: json['broadcaster_id'] as String,
      moderatorId: json['moderator_id'] as String,
      first: json['first'] as int?,
      after: json['after'] as String?,
    );

Map<String, dynamic> _$$_GetBlockedTermsPropsToJson(
    _$_GetBlockedTermsProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
    'moderator_id': instance.moderatorId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first', instance.first);
  writeNotNull('after', instance.after);
  return val;
}
