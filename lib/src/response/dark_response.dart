import 'package:twitch_client/src/response/animated_response.dart';

class Dark {
  final Animated animated;
  final Animated darkStatic;

  Dark({
    required this.animated,
    required this.darkStatic,
  });

  factory Dark.fromJson(Map<String, dynamic> json) => Dark(
        animated: Animated.fromJson(json["animated"]),
        darkStatic: Animated.fromJson(json["static"]),
      );
}
