import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_range_response.g.dart';

@JsonSerializable()
class DateRange {
  String? startedAt;
  String? endedAt;

  DateRange({this.startedAt, this.endedAt});

  DateRange.fromJson(Map<String, dynamic> json) {
    startedAt = json['started_at'];
    endedAt = json['ended_at'];
  }
  Map toJson() => {'started_at' : startedAt, 'ended_at': endedAt};
}
