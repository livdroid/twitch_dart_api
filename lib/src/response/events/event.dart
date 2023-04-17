import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/twitch_client.dart';

part 'event.g.dart';
part 'event.freezed.dart';


class SubscriptionEvent {
  String? subscriptionType;
  Event? event;
  SubscriptionEvent({this.subscriptionType, this.event});
}

@freezed
class Event with _$Event {
  const factory Event({
    String? broadcasterUserId,
    String? broadcasterUserLogin,
    String? broadcasterUserName,
    String? categoryId,
    String? categoryName,
    bool? isMature,
    String? language,
    String? title,
    DateTime? followedAt,
    String? userId,
    String? userLogin,
    String? userName,
    String? tier,
    bool? isGift,
    int? total,
    int? cumulativeTotal, // null if anonymous or not shared by the user
    bool? isAnonymous,
    Message? message,
    int? cumulativeMonths,
    int? streakMonths, // null if not shared
    int? durationMonths,
    int? bits,
    String? fromBroadcasterUserId,
    String? fromBroadcasterUserLogin,
    String? fromBroadcasterUserName,
    String? toBroadcasterUserId,
    String? toBroadcasterUserLogin,
    String? toBroadcasterUserName,
    int? viewers,
    String? moderatorUserId,
    String? moderatorUserLogin,
    String? moderatorUserName,
    String? reason,
    DateTime? bannedAt,
    DateTime? endsAt,
    bool? isPermanent,
    String? id,
    bool? isEnabled,
    bool? isPaused,
    bool? isInStock,
    int? cost,
    String? prompt,
    bool? isUserInputRequired,
    bool? shouldRedemptionsSkipRequestQueue,
    dynamic? cooldownExpiresAt,
    dynamic? redemptionsRedeemedCurrentStream,
    MaxPerPerStream? maxPerStream,
    MaxPerPerStream? maxPerUserPerStream,
    GlobalCooldown? globalCooldown,
    String? backgroundColor,
    Image? image,
    Image? defaultImage,
    String? userInput,
    String? status,
    Reward? reward,
    DateTime? redeemedAt,
    List<Choice>? choices,
    TsVoting? bitsVoting,
    TsVoting? channelPointsVoting,
    DateTime? startedAt,
    List<Outcome>? outcomes,
    DateTime? locksAt,
    int? progress,
    int? goal,
    List<Contribution>? topContributions,
    Contribution? lastContribution,
    int? level,
    DateTime? expiresAt,
    DateTime? endedAt,
    DateTime? cooldownEndsAt,
    String? campaignId,
    String? charityName,
    String? charityDescription,
    String? charityLogo,
    String? charityWebsite,
    Amount? amount,
    String? broadcasterId,
    String? broadcasterName,
    String? broadcasterLogin,
    Amount? currentAmount,
    Amount? targetAmount,
    String? stoppedAt,
    int? viewerCount,
    DateTime? targetCooldownEndsAt,
    String? type,
    String? description,
    bool? isAchieved,
    String? email,
    bool? emailVerified,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    String? text,
    List<Emote>? emotes,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Emote with _$Emote {
  const factory Emote({
    int? begin,
    int? end,
    String? id,
  }) = _Emote;

  factory Emote.fromJson(Map<String, dynamic> json) => _$EmoteFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    String? url1X,
    String? url2X,
    String? url4X,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class GlobalCooldown with _$GlobalCooldown {
  const factory GlobalCooldown({
    bool? isEnabled,
    int? seconds,
  }) = _GlobalCooldown;

  factory GlobalCooldown.fromJson(Map<String, dynamic> json) =>
      _$GlobalCooldownFromJson(json);
}

@freezed
class MaxPerPerStream with _$MaxPerPerStream {
  const factory MaxPerPerStream({
    bool? isEnabled,
    int? value,
  }) = _MaxPerPerStream;

  factory MaxPerPerStream.fromJson(Map<String, dynamic> json) =>
      _$MaxPerPerStreamFromJson(json);
}


@freezed
class TsVoting with _$TsVoting {
  const factory TsVoting({
    bool? isEnabled,
    int? amountPerVote,
  }) = _TsVoting;

  factory TsVoting.fromJson(Map<String, dynamic> json) =>
      _$TsVotingFromJson(json);
}

@freezed
class Choice with _$Choice {
  const factory Choice({
    String? id,
    String? title,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}

@freezed
class Outcome with _$Outcome {
  const factory Outcome({
    String? id,
    String? title,
    String? color,
    int? users,
    int? channelPoints,
    List<TopPredictor>? topPredictors, // contains up to 10 users
  }) = _Outcome;

  factory Outcome.fromJson(Map<String, dynamic> json) =>
      _$OutcomeFromJson(json);
}

@freezed
class TopPredictor with _$TopPredictor {
  const factory TopPredictor({
    String? userName,
    String? userLogin,
    String? userId,
    int? channelPointsWon,
    int? channelPointsUsed,
  }) = _TopPredictor;

  factory TopPredictor.fromJson(Map<String, dynamic> json) =>
      _$TopPredictorFromJson(json);
}

@freezed
class Contribution with _$Contribution {
  const factory Contribution({
    String? userId,
    String? userLogin,
    String? userName,
    String? type,
    int? total,
  }) = _Contribution;

  factory Contribution.fromJson(Map<String, dynamic> json) =>
      _$ContributionFromJson(json);
}

@freezed
class TopContribution with _$TopContribution {
  const factory TopContribution({
    String? userId,
    String? userLogin,
    String? userName,
    String? type,
    int? total,
  }) = _TopContribution;

  factory TopContribution.fromJson(Map<String, dynamic> json) =>
      _$TopContributionFromJson(json);
}

@freezed
class Amount with _$Amount {
  const factory Amount({
    int? value,
    int? decimalPlaces,
    String? currency,
  }) = _Amount;

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);
}
