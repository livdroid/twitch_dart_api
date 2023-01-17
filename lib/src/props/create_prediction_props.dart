import 'package:json_annotation/json_annotation.dart';

part 'create_prediction_props.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatePredictionsProps {
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;
  final String title;
  final List<Outcomes>? outcomes;
  @JsonKey(name: 'prediction_window')
  final int predictionWindow;

  CreatePredictionsProps(
      {required this.broadcasterId,
      required this.title,
      required this.outcomes,
      required this.predictionWindow});

  Map<String, dynamic> toJson() => _$CreatePredictionsPropsToJson(this);

  factory CreatePredictionsProps.fromJson(Map<String, dynamic> json) =>
      _$CreatePredictionsPropsFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class Outcomes {
  final String title;

  Outcomes({required this.title});

  Map<String, dynamic> toJson() => _$OutcomesToJson(this);

  factory Outcomes.fromJson(Map<String, dynamic> json) =>
      _$OutcomesFromJson(json);
}
