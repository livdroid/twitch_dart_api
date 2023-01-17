import 'package:freezed_annotation/freezed_annotation.dart';

part 'moderator_response.freezed.dart';
part 'moderator_response.g.dart';

@freezed
class ModeratorResponse with _$ModeratorResponse {
  const factory ModeratorResponse({
    List<Moderator?>? data,
    Pagination? pagination,
  }) = _ModeratorResponse;

  factory ModeratorResponse.fromJson(Map<String, dynamic> json) => _$ModeratorResponseFromJson(json);
}

@freezed
class Moderator with _$Moderator {
  const factory Moderator({
    String? userId,
    String? userLogin,
    String? userName,
  }) = _Moderator;

  factory Moderator.fromJson(Map<String, dynamic> json) => _$ModeratorFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    String? cursor,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}
