class ChannelEditor {
  final String? userId;
  final String? userName;
  final String? createdAt;

  ChannelEditor({this.userId, this.userName, this.createdAt});

  factory ChannelEditor.fromJson(Map<String, dynamic> json) => ChannelEditor(
      userId: json['user_id'],
      userName: json['user_name'],
      createdAt: json['created_at']);
}
