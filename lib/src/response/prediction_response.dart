import 'package:json_annotation/json_annotation.dart';
import 'package:twitch_client/twitch_client.dart';

part 'prediction_response.g.dart';

@JsonSerializable()
class PredictionResponse {
  final List<PredictionResponseData>? data;

  PredictionResponse({this.data});

  Map<String, dynamic> toJson() => _$PredictionResponseToJson(this);

  factory PredictionResponse.fromJson(Map<String, dynamic> json) =>
      _$PredictionResponseFromJson(json);
}

@JsonSerializable()
class PredictionResponseData {
  final String? id;
  @JsonKey(name: 'broadcaster_id')
  final String? broadcasterId;
  @JsonKey(name: 'broadcaster_name')
  final String? broadcasterName;
  @JsonKey(name: 'broadcaster_login')
  final String? broadcasterLogin;
  final String? title;
  @JsonKey(name: 'winning_outcome_id')
  final String? winningOutcomeId;
  final List<Outcomes>? outcomes;
  @JsonKey(name: 'prediction_window')
  final int? predictionWindow;
  final String? status;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'ended_at')
  final String? endedAt;
  @JsonKey(name: 'locked_at')
  final String? lockedAt;

  PredictionResponseData(
      {this.id,
      this.broadcasterId,
      this.broadcasterName,
      this.broadcasterLogin,
      this.title,
      this.winningOutcomeId,
      this.outcomes,
      this.predictionWindow,
      this.status,
      this.createdAt,
      this.endedAt,
      this.lockedAt});

  Map<String, dynamic> toJson() => _$PredictionResponseDataToJson(this);

  factory PredictionResponseData.fromJson(Map<String, dynamic> json) =>
      _$PredictionResponseDataFromJson(json);
}