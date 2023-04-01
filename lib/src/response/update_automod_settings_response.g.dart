// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_automod_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateAutomodSettingsResponse _$$_UpdateAutomodSettingsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateAutomodSettingsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UpdateAutomodSettingsResponseData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UpdateAutomodSettingsResponseToJson(
    _$_UpdateAutomodSettingsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

_$_UpdateAutomodSettingsResponseData
    _$$_UpdateAutomodSettingsResponseDataFromJson(Map<String, dynamic> json) =>
        _$_UpdateAutomodSettingsResponseData(
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

Map<String, dynamic> _$$_UpdateAutomodSettingsResponseDataToJson(
    _$_UpdateAutomodSettingsResponseData instance) {
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
