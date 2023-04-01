import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_blocked_terms_props.freezed.dart';

part 'get_blocked_terms_props.g.dart';

@freezed
class GetBlockedTermsProps with _$GetBlockedTermsProps {
  const factory GetBlockedTermsProps({
    required String broadcasterId,
    required String moderatorId,
    int? first,
    String? after,
  }) = _GetBlockedTermsProps;

  factory GetBlockedTermsProps.fromJson(Map<String, dynamic> json) =>
      _$GetBlockedTermsPropsFromJson(json);
}
