import 'package:twitch_client/src/response/dark_response.dart';

class Images {
  final Dark dark;
  final Dark light;

  Images({
    required this.dark,
    required this.light,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        dark: Dark.fromJson(json["dark"]),
        light: Dark.fromJson(json["light"]),
      );
}
