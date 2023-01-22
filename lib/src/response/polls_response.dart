import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'polls_response.freezed.dart';

part 'polls_response.g.dart';

@freezed
class PollsResponse with _$PollsResponse {
  const factory PollsResponse(
      {List<PollsResponseData>? data, Pagination? pagination}) = _PollsResponse;

  factory PollsResponse.fromJson(Map<String, dynamic> json) =>
      _$PollsResponseFromJson(json);
}

@freezed
class PollsResponseData with _$PollsResponseData {
  const factory PollsResponseData({
    String? id,
    String? broadcasterId,
    String? broadcasterName,
    String? broadcasterLogin,
    String? title,
    List<Choices>? choices,
    bool? bitsVotingEnabled,
    int? bitsPerVote,
    bool? channelPointsVotingEnabled,
    int? channelPointsPerVote,
    String? status,
    int? duration,
    String? startedAt,
  }) = _PollsResponseData;

  factory PollsResponseData.fromJson(Map<String, dynamic> json) =>
      _$PollsResponseDataFromJson(json);
}

@freezed
class Choices with _$Choices {
  const factory Choices({
    String? id,
    String? title,
    int? votes,
    int? channelPointsVotes,
    int? bitsVotes,
  }) = _Choices;

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}
