import 'package:json_annotation/json_annotation.dart';

part 'end_prediction_props.g.dart';

@JsonSerializable(includeIfNull: false)
class EndPredictionProps {
  @JsonKey(name : 'broadcaster_id')
  final String broadcasterId;
  final String id;
  final String status;
  @JsonKey(name : 'winning_outcome_id')
  final String? winningOutcomeId;

  EndPredictionProps(
      {required this.broadcasterId, required this.id, required this.status, this.winningOutcomeId});

  Map<String, dynamic> toJson() => _$EndPredictionPropsToJson(this);

  factory EndPredictionProps.fromJson(Map<String, dynamic> json) =>
      _$EndPredictionPropsFromJson(json);
}

enum EndPredictionStatus {
  RESOLVED,
  CANCELED,
  LOCKED
}