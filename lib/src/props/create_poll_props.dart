import 'package:json_annotation/json_annotation.dart';

part 'create_poll_props.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatePollProps {
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;
  final String title;
  final List<Choices> choices;
  final int duration;
  @JsonKey(name: 'channel_points_voting_enabled')
  final bool? channelPointsVotingEnabled;
  @JsonKey(name: 'channel_points_per_vote')
  final int? channelPointsPerVote;

  CreatePollProps({
    required this.broadcasterId,
    required this.title,
    required this.choices,
    required this.duration,
    this.channelPointsVotingEnabled,
    this.channelPointsPerVote,
  });

  Map<String, dynamic> toJson() => _$CreatePollPropsToJson(this);

  factory CreatePollProps.fromJson(Map<String, dynamic> json) =>
      _$CreatePollPropsFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class Choices {
  final String? title;

  Choices({this.title});

  Map<String, dynamic> toJson() => _$ChoicesToJson(this);

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}
