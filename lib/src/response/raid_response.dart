import 'package:freezed_annotation/freezed_annotation.dart';

part 'raid_response.freezed.dart';
part 'raid_response.g.dart';

@freezed
class RaidResponse with _$RaidResponse {
  const factory RaidResponse({
    required List<RaidResponseData?>? data,
  }) = _RaidResponse;

  factory RaidResponse.fromJson(Map<String, dynamic> json) =>
      _$RaidResponseFromJson(json);
}

@freezed
class RaidResponseData with _$RaidResponseData {
  const factory RaidResponseData({
    String? createdAt,
    bool? isMature,
  }) = _RaidResponseData;

  factory RaidResponseData.fromJson(Map<String, dynamic> json) =>
      _$RaidResponseDataFromJson(json);
}
