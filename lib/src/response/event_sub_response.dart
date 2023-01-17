import 'package:twitch_client/src/props/condition.dart';
import 'package:twitch_client/src/props/transport.dart';

class EventSubResponse {
  final List<CreateEventSubData>? data;
  final int? total;
  final int? totalCost;
  final int? maxTotalCost;

  EventSubResponse({this.data, this.total, this.totalCost, this.maxTotalCost});

  factory EventSubResponse.fromJson(Map<String, dynamic> json) =>
      EventSubResponse(
          data: List<CreateEventSubData>.from(
              json['data'].map((e) => CreateEventSubData.fromJson(e))),
          total: json['total'],
          totalCost: json['total_cost'],
          maxTotalCost: json['max_total_cost']);
}

class CreateEventSubData {
  final String? id;
  final String? status;
  final String? type;
  final String? version;
  final Condition? condition;
  final String? createdAt;
  final Transport? transport;
  final int? cost;

  CreateEventSubData(
      {this.id,
      this.status,
      this.type,
      this.version,
      this.condition,
      this.createdAt,
      this.transport,
      this.cost});

  factory CreateEventSubData.fromJson(Map<String, dynamic> json) =>
      CreateEventSubData(
          id: json['id'],
          status: json['status'],
          type: json['type'],
          version: json['version'],
          condition: Condition.fromJson(json['condition']),
          createdAt: json['created_at'],
          transport: Transport.fromJson(json['transport']),
          cost: json['cost']);
}
