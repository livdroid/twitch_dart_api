// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_user_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockUserProps _$$_BlockUserPropsFromJson(Map<String, dynamic> json) =>
    _$_BlockUserProps(
      targetUserId: json['target_user_id'] as String,
      sourceContext: json['source_context'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_BlockUserPropsToJson(_$_BlockUserProps instance) {
  final val = <String, dynamic>{
    'target_user_id': instance.targetUserId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source_context', instance.sourceContext);
  writeNotNull('reason', instance.reason);
  return val;
}
