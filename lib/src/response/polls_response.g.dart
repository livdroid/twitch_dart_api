// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polls_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PollsResponse _$$_PollsResponseFromJson(Map<String, dynamic> json) =>
    _$_PollsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PollsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PollsResponseToJson(_$_PollsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}

_$_PollsResponseData _$$_PollsResponseDataFromJson(Map<String, dynamic> json) =>
    _$_PollsResponseData(
      id: json['id'] as String?,
      broadcasterId: json['broadcaster_id'] as String?,
      broadcasterName: json['broadcaster_name'] as String?,
      broadcasterLogin: json['broadcaster_login'] as String?,
      title: json['title'] as String?,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choices.fromJson(e as Map<String, dynamic>))
          .toList(),
      bitsVotingEnabled: json['bits_voting_enabled'] as bool?,
      bitsPerVote: json['bits_per_vote'] as int?,
      channelPointsVotingEnabled:
          json['channel_points_voting_enabled'] as bool?,
      channelPointsPerVote: json['channel_points_per_vote'] as int?,
      status: json['status'] as String?,
      duration: json['duration'] as int?,
      startedAt: json['started_at'] as String?,
    );

Map<String, dynamic> _$$_PollsResponseDataToJson(
    _$_PollsResponseData instance) {
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
  writeNotNull('choices', instance.choices?.map((e) => e.toJson()).toList());
  writeNotNull('bits_voting_enabled', instance.bitsVotingEnabled);
  writeNotNull('bits_per_vote', instance.bitsPerVote);
  writeNotNull(
      'channel_points_voting_enabled', instance.channelPointsVotingEnabled);
  writeNotNull('channel_points_per_vote', instance.channelPointsPerVote);
  writeNotNull('status', instance.status);
  writeNotNull('duration', instance.duration);
  writeNotNull('started_at', instance.startedAt);
  return val;
}

_$_Choices _$$_ChoicesFromJson(Map<String, dynamic> json) => _$_Choices(
      id: json['id'] as String?,
      title: json['title'] as String?,
      votes: json['votes'] as int?,
      channelPointsVotes: json['channel_points_votes'] as int?,
      bitsVotes: json['bits_votes'] as int?,
    );

Map<String, dynamic> _$$_ChoicesToJson(_$_Choices instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('votes', instance.votes);
  writeNotNull('channel_points_votes', instance.channelPointsVotes);
  writeNotNull('bits_votes', instance.bitsVotes);
  return val;
}
