import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'video_response.freezed.dart';

part 'video_response.g.dart';

@freezed
class VideoResponse with _$VideoResponse {
  const factory VideoResponse({
    List<VideoResponseData>? data,
    Pagination? pagination,
  }) = _VideoResponse;

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}

@freezed
class VideoResponseData with _$VideoResponseData {
  const factory VideoResponseData({
    String? id,
    String? streamId,
    String? userId,
    String? userLogin,
    String? userName,
    String? title,
    String? description,
    String? createdAt,
    String? publishedAt,
    String? url,
    String? thumbnailUrl,
    String? viewable,
    int? viewCount,
    String? language,
    String? type,
    String? duration,
    List<MutedSegments>? mutedSegments,
  }) = _VideoResponseData;

  factory VideoResponseData.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseDataFromJson(json);
}

@freezed
class MutedSegments with _$MutedSegments {
  const factory MutedSegments({
    int? duration,
    int? offset,
  }) = _MutedSegments;

  factory MutedSegments.fromJson(Map<String, dynamic> json) =>
      _$MutedSegmentsFromJson(json);
}
