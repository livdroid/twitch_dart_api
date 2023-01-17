class ChattersData {
  final String? userId;
  final String? userName;
  final String? createdAt;

  ChattersData({this.userId, this.userName, this.createdAt});

  factory ChattersData.fromJson(Map<String, dynamic> json) => ChattersData(
      userId: json['user_id'],
      userName: json['user_name'],
      createdAt: json['created_at']);
}
