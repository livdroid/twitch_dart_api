import 'package:json_annotation/json_annotation.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'polls_response.g.dart';

@JsonSerializable()
class PollsResponse {
  List<PollsResponseData>? data;
  Pagination? pagination;

  PollsResponse({this.data, this.pagination});

  factory PollsResponse.fromJson(Map<String, dynamic> json) =>
      _$PollsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PollsResponseToJson(this);
}

@JsonSerializable()
class PollsResponseData {
  String? id;
  @JsonKey(name: 'broadcaster_id')
  String? broadcasterId;
  @JsonKey(name: 'broadcaster_name')
  String? broadcasterName;
  @JsonKey(name: 'broadcaster_login')
  String? broadcasterLogin;
  String? title;
  List<Choices>? choices;
  @JsonKey(name: 'bits_voting_enabled')
  bool? bitsVotingEnabled;
  @JsonKey(name: 'bits_per_vote')
  int? bitsPerVote;
  @JsonKey(name: 'channel_points_voting_enabled')
  bool? channelPointsVotingEnabled;
  @JsonKey(name: 'channel_points_per_vote')
  int? channelPointsPerVote;
  String? status;
  int? duration;
  @JsonKey(name: 'started_at')
  String? startedAt;

  PollsResponseData(
      {this.id,
      this.broadcasterId,
      this.broadcasterName,
      this.broadcasterLogin,
      this.title,
      this.choices,
      this.bitsVotingEnabled,
      this.bitsPerVote,
      this.channelPointsVotingEnabled,
      this.channelPointsPerVote,
      this.status,
      this.duration,
      this.startedAt});

  factory PollsResponseData.fromJson(Map<String, dynamic> json) =>
      _$PollsResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PollsResponseDataToJson(this);
}

@JsonSerializable()
class Choices {
  String? id;
  String? title;
  int? votes;
  @JsonKey(name: 'channel_points_votes')
  int? channelPointsVotes;
  @JsonKey(name: 'bits_votes')
  int? bitsVotes;

  Choices(
      {this.id,
      this.title,
      this.votes,
      this.channelPointsVotes,
      this.bitsVotes});

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);

  Map<String, dynamic> toJson() => _$ChoicesToJson(this);
}
