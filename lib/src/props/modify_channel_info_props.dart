class ModifyChannelInformationProp {
  String? gameId;
  String? title;
  String? broadcasterLanguage;

  ModifyChannelInformationProp(
      {this.gameId, this.title, this.broadcasterLanguage});

  factory ModifyChannelInformationProp.fromJson(Map<String, dynamic> json) =>
      ModifyChannelInformationProp(
          gameId: json['game_id'],
          title: json['title'],
          broadcasterLanguage: json['broadcaster_language']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['game_id'] = gameId;
    data['title'] = title;
    data['broadcaster_language'] = broadcasterLanguage;
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
