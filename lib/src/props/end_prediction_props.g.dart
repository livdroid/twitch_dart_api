// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_prediction_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EndPredictionProps _$EndPredictionPropsFromJson(Map<String, dynamic> json) =>
    EndPredictionProps(
      broadcasterId: json['broadcaster_id'] as String,
      id: json['id'] as String,
      status: json['status'] as String,
      winningOutcomeId: json['winning_outcome_id'] as String?,
    );

Map<String, dynamic> _$EndPredictionPropsToJson(EndPredictionProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
    'id': instance.id,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('winning_outcome_id', instance.winningOutcomeId);
  return val;
}
