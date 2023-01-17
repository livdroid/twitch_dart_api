// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_prediction_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePredictionsProps _$CreatePredictionsPropsFromJson(
        Map<String, dynamic> json) =>
    CreatePredictionsProps(
      broadcasterId: json['broadcaster_id'] as String,
      title: json['title'] as String,
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => Outcomes.fromJson(e as Map<String, dynamic>))
          .toList(),
      predictionWindow: json['prediction_window'] as int,
    );

Map<String, dynamic> _$CreatePredictionsPropsToJson(
    CreatePredictionsProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('outcomes', instance.outcomes?.map((e) => e.toJson()).toList());
  val['prediction_window'] = instance.predictionWindow;
  return val;
}

Outcomes _$OutcomesFromJson(Map<String, dynamic> json) => Outcomes(
      title: json['title'] as String,
    );

Map<String, dynamic> _$OutcomesToJson(Outcomes instance) => <String, dynamic>{
      'title': instance.title,
    };
