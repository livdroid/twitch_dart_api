// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredictionResponse _$PredictionResponseFromJson(Map<String, dynamic> json) =>
    PredictionResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => PredictionResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PredictionResponseToJson(PredictionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

PredictionResponseData _$PredictionResponseDataFromJson(
        Map<String, dynamic> json) =>
    PredictionResponseData(
      id: json['id'] as String?,
      broadcasterId: json['broadcaster_id'] as String?,
      broadcasterName: json['broadcaster_name'] as String?,
      broadcasterLogin: json['broadcaster_login'] as String?,
      title: json['title'] as String?,
      winningOutcomeId: json['winning_outcome_id'] as String?,
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => Outcomes.fromJson(e as Map<String, dynamic>))
          .toList(),
      predictionWindow: json['prediction_window'] as int?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      endedAt: json['ended_at'] as String?,
      lockedAt: json['locked_at'] as String?,
    );

Map<String, dynamic> _$PredictionResponseDataToJson(
    PredictionResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('broadcaster_name', instance.broadcasterName);
  writeNotNull('broadcaster_login', instance.broadcasterLogin);
  writeNotNull('title', instance.title);
  writeNotNull('winning_outcome_id', instance.winningOutcomeId);
  writeNotNull('outcomes', instance.outcomes?.map((e) => e.toJson()).toList());
  writeNotNull('prediction_window', instance.predictionWindow);
  writeNotNull('status', instance.status);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('ended_at', instance.endedAt);
  writeNotNull('locked_at', instance.lockedAt);
  return val;
}

Outcomes _$OutcomesFromJson(Map<String, dynamic> json) => Outcomes(
      id: json['id'] as String?,
      title: json['title'] as String?,
      users: json['users'] as int?,
      channelPoints: json['channel_points'] as int?,
      topPredictors: json['top_predictors'],
      color: json['color'] as String?,
    );

Map<String, dynamic> _$OutcomesToJson(Outcomes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('users', instance.users);
  writeNotNull('channel_points', instance.channelPoints);
  writeNotNull('top_predictors', instance.topPredictors);
  writeNotNull('color', instance.color);
  return val;
}
