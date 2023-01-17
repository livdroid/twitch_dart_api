class UserResponse {
  final List<UserResponseData>? data;

  UserResponse({this.data});

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
      data: List<UserResponseData>.from(
          json['data'].map((e) => UserResponseData.fromJson(e))));
}

class UserResponseData {
  String? id;
  String? login;
  String? displayName;
  String? type;
  String? broadcasterType;
  String? description;
  String? profileImageUrl;
  String? offlineImageUrl;
  int? viewCount;
  String? email;
  String? createdAt;

  UserResponseData(
      {this.id,
      this.login,
      this.displayName,
      this.type,
      this.broadcasterType,
      this.description,
      this.profileImageUrl,
      this.offlineImageUrl,
      this.viewCount,
      this.email,
      this.createdAt});

  UserResponseData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    login = json['login'];
    displayName = json['display_name'];
    type = json['type'];
    broadcasterType = json['broadcaster_type'];
    description = json['description'];
    profileImageUrl = json['profile_image_url'];
    offlineImageUrl = json['offline_image_url'];
    viewCount = json['view_count'];
    email = json['email'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['login'] = this.login;
    data['display_name'] = this.displayName;
    data['type'] = this.type;
    data['broadcaster_type'] = this.broadcasterType;
    data['description'] = this.description;
    data['profile_image_url'] = this.profileImageUrl;
    data['offline_image_url'] = this.offlineImageUrl;
    data['view_count'] = this.viewCount;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    return data;
  }
}
