import 'package:twitch_client/src/response/tier_response.dart';

class CheermotesResponseData {
  final String prefix;
  final List<Tier> tiers;
  final String type;
  final int order;
  final DateTime lastUpdated;
  final bool isCharitable;

  CheermotesResponseData({
    required this.prefix,
    required this.tiers,
    required this.type,
    required this.order,
    required this.lastUpdated,
    required this.isCharitable,
  });

  factory CheermotesResponseData.fromJson(Map<String, dynamic> json) => CheermotesResponseData(
        prefix: json["prefix"],
        tiers: List<Tier>.from(json["tiers"].map((v) => Tier.fromJson(v))),
        type: json["type"],
        order: json["order"],
        lastUpdated: DateTime.parse(json["last_updated"]),
        isCharitable: json["is_charitable"],
      );
}
