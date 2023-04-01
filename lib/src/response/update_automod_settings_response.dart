import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_automod_settings_response.freezed.dart';
part 'update_automod_settings_response.g.dart';

@freezed
class UpdateAutomodSettingsResponse with _$UpdateAutomodSettingsResponse {
  const factory UpdateAutomodSettingsResponse({
    List<UpdateAutomodSettingsResponseData>? data,
  }) = _UpdateAutomodSettingsResponse;

  factory UpdateAutomodSettingsResponse.fromJson(Map<String, dynamic> json) => _$UpdateAutomodSettingsResponseFromJson(json);
}

@freezed
class UpdateAutomodSettingsResponseData with _$UpdateAutomodSettingsResponseData {
  const factory UpdateAutomodSettingsResponseData({
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
  }) = _UpdateAutomodSettingsResponseData;

  factory UpdateAutomodSettingsResponseData.fromJson(Map<String, dynamic> json) => _$UpdateAutomodSettingsResponseDataFromJson(json);
}
