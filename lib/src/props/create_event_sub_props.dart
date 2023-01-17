import 'package:twitch_client/src/props/condition.dart';
import 'package:twitch_client/src/props/transport.dart';

class CreateEventSubProps {
  final String? type;
  final String? version;
  final Condition? condition;
  final Transport? transport;
  CreateEventSubProps(
      {required this.type,
      required this.version,
      required this.condition,
      required this.transport});

  factory CreateEventSubProps.fromJson(Map<String, dynamic> json) =>
      CreateEventSubProps(
          type: json['type'],
          version: json['version'],
          condition: Condition.fromJson(json['condition']),
          transport: Transport.fromJson(json['transport']));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['version'] = version;
    data['condition'] = condition?.toJson();
    data['transport'] = transport?.toJson();
    data.removeWhere((key, value) => value == null);
    return data;
  }
}
