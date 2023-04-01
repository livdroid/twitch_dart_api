import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_clip_response.freezed.dart';
part 'get_clip_response.g.dart';


@freezed
class GetClipsResponse with _$GetClipsResponse {
  const factory GetClipsResponse({
    List<GetClipsResponseData>? data,
  }) = _GetClipResponse;

  factory GetClipsResponse.fromJson(Map<String, dynamic> json) => _$GetClipsResponseFromJson(json);
}

@freezed
class GetClipsResponseData with _$GetClipsResponseData {
  const factory GetClipsResponseData({
    String? id,
    String? url,
    String? embedUrl,
    String? broadcasterId,
    String? broadcasterName,
    String? creatorId,
    String? creatorName,
    String? videoId,
    String? gameId,
    String? language,
    String? title,
    int? viewCount,
    DateTime? createdAt,
    String? thumbnailUrl,
    double? duration,
    int? vodOffset,
  }) = _GetClipsResponseData;

  factory GetClipsResponseData.fromJson(Map<String, dynamic> json) => _$GetClipsResponseDataFromJson(json);
}
