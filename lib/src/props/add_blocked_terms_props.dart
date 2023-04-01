import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_blocked_terms_props.freezed.dart';

part 'add_blocked_terms_props.g.dart';

@freezed
class AddBlockedTermsProps with _$AddBlockedTermsProps {
  const factory AddBlockedTermsProps({required String text}) =
      _AddBlockedTermsProps;

  factory AddBlockedTermsProps.fromJson(Map<String, dynamic> json) =>
      _$AddBlockedTermsPropsFromJson(json);
}
