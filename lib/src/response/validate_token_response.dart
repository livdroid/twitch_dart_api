class ValidateTokenResponse {
  final String? clientId;
  final String? login;
  final List<String>? scopes;
  final String? userId;
  final int? expiresIn;

  ValidateTokenResponse(
      {required this.clientId,
      required this.login,
      required this.scopes,
      required this.userId,
      required this.expiresIn});

  factory ValidateTokenResponse.fromJson(Map<String, dynamic> json) =>
      ValidateTokenResponse(
          clientId: json['client_id'],
          login: json['login'],
          scopes: json['scopes'].cast<String>(),
          userId: json['user_id'],
          expiresIn: json['expires_in']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['client_id'] = clientId;
    data['login'] = login;
    data['scopes'] = scopes;
    data['user_id'] = userId;
    data['expires_in'] = expiresIn;
    return data;
  }
}
