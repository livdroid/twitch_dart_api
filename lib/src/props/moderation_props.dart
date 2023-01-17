class ModerationProps {
  final String broadcasterId;
  final String moderatorId;
  final String userId;

  ModerationProps(
      {required this.broadcasterId,
      required this.moderatorId,
      required this.userId});

  Map<String, dynamic> toJson() => {
        'broadcaster_id': broadcasterId,
        'moderator_id': moderatorId,
        'user_id': userId
      };
}
