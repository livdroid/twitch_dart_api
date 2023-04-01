import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_clip_response.freezed.dart';

part 'create_clip_response.g.dart';

@freezed
class CreateClipResponse with _$CreateClipResponse {
  const factory CreateClipResponse({
    List<CreateClipResponseData>? data,
  }) = _CreateClipResponse;

  factory CreateClipResponse.fromJson(Map<String, dynamic> json) => _$CreateClipResponseFromJson(json);
}

@freezed
class CreateClipResponseData with _$CreateClipResponseData {
  const factory CreateClipResponseData({
    String? id,
    String? editUrl,
  }) = _CreateClipResponseData;

  factory CreateClipResponseData.fromJson(Map<String, dynamic> json) => _$CreateClipResponseDataFromJson(json);
}
