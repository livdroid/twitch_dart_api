import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'get_streams_response.freezed.dart';
part 'get_streams_response.g.dart';


@freezed
class GetStreamsResponse with _$GetStreamsResponse {
  const factory GetStreamsResponse({
    List<GetStreamsResponseData>? data,
    Pagination? pagination,
  }) = _GetStreamsResponse;

  factory GetStreamsResponse.fromJson(Map<String, dynamic> json) => _$GetStreamsResponseFromJson(json);
}

@freezed
class GetStreamsResponseData with _$GetStreamsResponseData {
  const factory GetStreamsResponseData({
    String? id,
    String? userId,
    String? userLogin,
    String? userName,
    String? gameId,
    String? gameName,
    String? type,
    String? title,
    List<String>? tags,
    int? viewerCount,
    DateTime? startedAt,
    String? language,
    String? thumbnailUrl,
    List<dynamic>? tagIds,
    bool? isMature,
  }) = _GetStreamsResponseData;

  factory GetStreamsResponseData.fromJson(Map<String, dynamic> json) => _$GetStreamsResponseDataFromJson(json);
}