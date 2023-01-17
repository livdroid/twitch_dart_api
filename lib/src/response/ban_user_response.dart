class BanUserResponse {
  final List<BanUserResponseData>? data;

  BanUserResponse({required this.data});

  factory BanUserResponse.fromJson(Map<String, dynamic> json) =>
      BanUserResponse(
          data: List<BanUserResponseData>.from(
              json['data'].map((e) => BanUserResponseData.fromJson(e))));
}

class BanUserResponseData {
  final String? broadcasterId;
  final String? moderatorId;
  final String? userId;
  final String? createdAt;
  final String? endTime;

  BanUserResponseData(
      {this.broadcasterId,
      this.moderatorId,
      this.userId,
      this.createdAt,
      this.endTime});

  factory BanUserResponseData.fromJson(Map<String, dynamic> json) =>
      BanUserResponseData(
        broadcasterId: json['broadcaster_id'],
        moderatorId: json['moderator_id'],
        userId: json['user_id'],
        createdAt: json['created_at'],
        endTime: json['end_time'],
      );
}
