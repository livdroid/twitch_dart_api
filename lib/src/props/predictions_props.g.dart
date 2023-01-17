// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predictions_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PredictionsProps _$$_PredictionsPropsFromJson(Map<String, dynamic> json) =>
    _$_PredictionsProps(
      broadcasterId: json['broadcaster_id'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_PredictionsPropsToJson(_$_PredictionsProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}
