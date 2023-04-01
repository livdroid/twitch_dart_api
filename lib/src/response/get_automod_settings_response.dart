import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_automod_settings_response.freezed.dart';

part 'get_automod_settings_response.g.dart';

@freezed
class GetAutomodSettingsResponse with _$GetAutomodSettingsResponse {
  const factory GetAutomodSettingsResponse({
    List<GetAutomodSettingsResponseData>? data,
  }) = _GetAutomodSettingsResponse;

  factory GetAutomodSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAutomodSettingsResponseFromJson(json);
}

@freezed
class GetAutomodSettingsResponseData with _$GetAutomodSettingsResponseData {
  const factory GetAutomodSettingsResponseData({
    String? broadcasterId,
    String? moderatorId,
    int? overallLevel,
    int? disability,
    int? aggression,
    int? sexualitySexOrGender,
    int? misogyny,
    int? bullying,
    int? swearing,
    int? raceEthnicityOrReligion,
    int? sexBasedTerms,
  }) = _GetAutomodSettingsResponseData;

  factory GetAutomodSettingsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetAutomodSettingsResponseDataFromJson(json);
}
