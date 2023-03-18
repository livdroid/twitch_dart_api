import 'package:freezed_annotation/freezed_annotation.dart';

part 'stream_key_response.freezed.dart';
part 'stream_key_response.g.dart';

@freezed
class StreamKeyResponse with _$StreamKeyResponse {
  const factory StreamKeyResponse({
    List<StreamKeyResponseData>? data,
  }) = _StreamKeyResponse;

  factory StreamKeyResponse.fromJson(Map<String, dynamic> json) => _$StreamKeyResponseFromJson(json);
}

@freezed
class StreamKeyResponseData with _$StreamKeyResponseData {
  const factory StreamKeyResponseData({
    String? streamKey,
  }) = _StreamKeyResponseData;

  factory StreamKeyResponseData.fromJson(Map<String, dynamic> json) => _$StreamKeyResponseDataFromJson(json);
}
