import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_blocked_terms_props.freezed.dart';

part 'remove_blocked_terms_props.g.dart';

@freezed
class RemoveBlockedTermsProps with _$RemoveBlockedTermsProps {
  const factory RemoveBlockedTermsProps(
      {required String broadcasterId,
      required String moderatorId,
      required String id}) = _RemoveBlockedTermsProps;

  factory RemoveBlockedTermsProps.fromJson(Map<String, dynamic> json) =>
      _$RemoveBlockedTermsPropsFromJson(json);
}
