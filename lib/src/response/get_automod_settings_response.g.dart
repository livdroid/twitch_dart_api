// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_automod_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAutomodSettingsResponse _$$_GetAutomodSettingsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetAutomodSettingsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetAutomodSettingsResponseData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetAutomodSettingsResponseToJson(
    _$_GetAutomodSettingsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_GetAutomodSettingsResponseData _$$_GetAutomodSettingsResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_GetAutomodSettingsResponseData(
      broadcasterId: json['broadcaster_id'] as String?,
      moderatorId: json['moderator_id'] as String?,
      overallLevel: json['overall_level'] as int?,
      disability: json['disability'] as int?,
      aggression: json['aggression'] as int?,
      sexualitySexOrGender: json['sexuality_sex_or_gender'] as int?,
      misogyny: json['misogyny'] as int?,
      bullying: json['bullying'] as int?,
      swearing: json['swearing'] as int?,
      raceEthnicityOrReligion: json['race_ethnicity_or_religion'] as int?,
      sexBasedTerms: json['sex_based_terms'] as int?,
    );

Map<String, dynamic> _$$_GetAutomodSettingsResponseDataToJson(
    _$_GetAutomodSettingsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('broadcaster_id', instance.broadcasterId);
  writeNotNull('moderator_id', instance.moderatorId);
  writeNotNull('overall_level', instance.overallLevel);
  writeNotNull('disability', instance.disability);
  writeNotNull('aggression', instance.aggression);
  writeNotNull('sexuality_sex_or_gender', instance.sexualitySexOrGender);
  writeNotNull('misogyny', instance.misogyny);
  writeNotNull('bullying', instance.bullying);
  writeNotNull('swearing', instance.swearing);
  writeNotNull('race_ethnicity_or_religion', instance.raceEthnicityOrReligion);
  writeNotNull('sex_based_terms', instance.sexBasedTerms);
  return val;
}
