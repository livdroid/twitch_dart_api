import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_automod_props.freezed.dart';
part 'update_automod_props.g.dart';

@freezed
class UpdateAutomodSettingsProps with _$UpdateAutomodSettingsProps {
  const factory UpdateAutomodSettingsProps({
    int? aggression,
    int? bullying,
    int? disability,
    int? misogyny,
    int? overallLevel,
    int? raceEthnicityOrReligion,
    int? sexBasedTerms,
    int? sexualitySexOrGender,
    int? swearing,
  }) = _UpdateAutomodSettings;

  factory UpdateAutomodSettingsProps.fromJson(Map<String, dynamic> json) =>
      _$UpdateAutomodSettingsPropsFromJson(json);
}
