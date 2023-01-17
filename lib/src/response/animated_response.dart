class Animated {
  final String the2;
  final String the1;
  final String the3;
  final String the4;
  final String the15;

  Animated({
    required this.the1,
    required this.the2,
    required this.the3,
    required this.the4,
    required this.the15,
  });

  factory Animated.fromJson(Map<String, dynamic> json) => Animated(
        the1: json["1"],
        the2: json["2"],
        the3: json["3"],
        the4: json["4"],
        the15: json["1.5"],
      );
}
