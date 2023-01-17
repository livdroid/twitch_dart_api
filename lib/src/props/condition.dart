class Condition {
  final String? userId;

  Condition({required this.userId});

  factory Condition.fromJson(Map<String, dynamic> json) =>
      Condition(userId: json['user_id']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['broadcaster_user_id'] = userId;
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
