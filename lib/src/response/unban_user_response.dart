class UnbanUserResponse {
  final String error;
  final int status;
  final String message;

  UnbanUserResponse({
    required this.error,
    required this.status,
    required this.message,
  });

  factory UnbanUserResponse.fromJson(dynamic json) => UnbanUserResponse(
      error: json['error'], status: json['status'], message: json['message']);

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['error'] = error;
    data['status'] = status;
    data['message'] = message;
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
