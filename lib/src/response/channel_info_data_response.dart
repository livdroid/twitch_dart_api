class ChannelInfoData {
  final String broadcasterId;
  final String broadcasterLogin;
  final String broadcasterName;
  final String broadcasterLanguage;
  final String gameId;
  final String gameName;
  final String title;
  final int delay;

  ChannelInfoData({
    required this.broadcasterId,
    required this.broadcasterLogin,
    required this.broadcasterName,
    required this.broadcasterLanguage,
    required this.gameId,
    required this.gameName,
    required this.title,
    required this.delay,
  });

  factory ChannelInfoData.fromJson(dynamic json) => ChannelInfoData(
      broadcasterId: json['broadcaster_id'] as String,
      broadcasterLogin: json['broadcaster_login'] as String,
      broadcasterName: json['broadcaster_name'] as String,
      broadcasterLanguage: json['broadcaster_language'] as String,
      gameId: json['game_id'] as String,
      gameName: json['game_name'] as String,
      title: json['title'] as String,
      delay: json['delay'] as int);
}
