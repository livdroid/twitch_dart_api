class BannedUser {
  final String? userId;
  final String? userLogin;
  final String? userName;
  final String? expiresAt;
  final String? createdAt;
  final String? reason;
  final String? moderatorId;
  final String? moderatorLogin;
  final String? moderatorName;

  BannedUser(
      {this.userId,
      this.userLogin,
      this.userName,
      this.expiresAt,
      this.createdAt,
      this.reason,
      this.moderatorId,
      this.moderatorLogin,
      this.moderatorName});

  factory BannedUser.fromJson(Map<String, dynamic> json) => BannedUser(
      userId: json['user_id'],
      userLogin: json['user_login'],
      userName: json['user_name'],
      expiresAt: json['expires_at'],
      createdAt: json['created_at'],
      reason: json['reason'],
      moderatorId: json['moderator_id'],
      moderatorLogin: json['moderator_login'],
      moderatorName: json['moderator_name']);
}
