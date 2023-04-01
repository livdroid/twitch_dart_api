// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_automod_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateAutomodSettings _$$_UpdateAutomodSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateAutomodSettings(
      aggression: json['aggression'] as int?,
      bullying: json['bullying'] as int?,
      disability: json['disability'] as int?,
      misogyny: json['misogyny'] as int?,
      overallLevel: json['overall_level'] as int?,
      raceEthnicityOrReligion: json['race_ethnicity_or_religion'] as int?,
      sexBasedTerms: json['sex_based_terms'] as int?,
      sexualitySexOrGender: json['sexuality_sex_or_gender'] as int?,
      swearing: json['swearing'] as int?,
    );

Map<String, dynamic> _$$_UpdateAutomodSettingsToJson(
    _$_UpdateAutomodSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('aggression', instance.aggression);
  writeNotNull('bullying', instance.bullying);
  writeNotNull('disability', instance.disability);
  writeNotNull('misogyny', instance.misogyny);
  writeNotNull('overall_level', instance.overallLevel);
  writeNotNull('race_ethnicity_or_religion', instance.raceEthnicityOrReligion);
  writeNotNull('sex_based_terms', instance.sexBasedTerms);
  writeNotNull('sexuality_sex_or_gender', instance.sexualitySexOrGender);
  writeNotNull('swearing', instance.swearing);
  return val;
}
