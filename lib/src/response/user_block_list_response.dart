class UserBlockListResponse {
  List<UserBlockListResponseData>? data;

  UserBlockListResponse({this.data});

  UserBlockListResponse.fromJson(Map<String, dynamic> json) {
    data:
    List<UserBlockListResponseData>.from(
        json['data'].map((e) => UserBlockListResponseData.fromJson(e)));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserBlockListResponseData {
  late final String? userId;
  late final String? userLogin;
  late final String? displayName;

  UserBlockListResponseData({this.userId, this.userLogin, this.displayName});

  UserBlockListResponseData.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userLogin = json['user_login'];
    displayName = json['display_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['user_login'] = userLogin;
    data['display_name'] = displayName;
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
