import 'package:json_annotation/json_annotation.dart';

part 'pagination_response.g.dart';

@JsonSerializable()
class Pagination {
  final String? cursor;

  Pagination({this.cursor});

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      Pagination(cursor: json['cursor']);

  Map toJson() => {'cursor' : cursor};
}
