import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_range_response.freezed.dart';

part 'data_range_response.g.dart';

@freezed
class DateRange with _$DateRange {
  const factory DateRange(String? startedAt, String? endedAt) = _DateRange;

  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);
}
