import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response.freezed.dart';

part 'pagination_response.g.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({required String cursor}) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
