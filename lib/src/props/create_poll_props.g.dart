// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_poll_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePollProps _$CreatePollPropsFromJson(Map<String, dynamic> json) =>
    CreatePollProps(
      broadcasterId: json['broadcaster_id'] as String,
      title: json['title'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => Choices.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: json['duration'] as int,
      channelPointsVotingEnabled:
          json['channel_points_voting_enabled'] as bool?,
      channelPointsPerVote: json['channel_points_per_vote'] as int?,
    );

Map<String, dynamic> _$CreatePollPropsToJson(CreatePollProps instance) {
  final val = <String, dynamic>{
    'broadcaster_id': instance.broadcasterId,
    'title': instance.title,
    'choices': instance.choices.map((e) => e.toJson()).toList(),
    'duration': instance.duration,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'channel_points_voting_enabled', instance.channelPointsVotingEnabled);
  writeNotNull('channel_points_per_vote', instance.channelPointsPerVote);
  return val;
}

Choices _$ChoicesFromJson(Map<String, dynamic> json) => Choices(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ChoicesToJson(Choices instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}
