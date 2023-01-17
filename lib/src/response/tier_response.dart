import 'package:twitch_client/src/response/image_response.dart';

class Tier {
  final int minBits;
  final String id;
  final String color;
  final Images images;
  final bool canCheer;
  final bool showInBitsCard;

  Tier({
    required this.minBits,
    required this.id,
    required this.color,
    required this.images,
    required this.canCheer,
    required this.showInBitsCard,
  });

  factory Tier.fromJson(Map<String, dynamic> json) => Tier(
        minBits: json["min_bits"],
        id: json["id"],
        color: json["color"],
        images: Images.fromJson(json["images"]),
        canCheer: json["can_cheer"],
        showInBitsCard: json["show_in_bits_card"],
      );
}
